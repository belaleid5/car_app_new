import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/auth/data/models/request/register_request_model.dart';
import 'package:car_app_new/core/shared/model/location_model.dart';
import 'package:car_app_new/features/auth/data/models/response/user_response_model.dart';
import 'package:car_app_new/features/auth/data/repo/register_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._registerRepo)
      : super(const RegisterState.initial()) {
    on<RegisterEvent>(_onEvent);
  }

  final RegisterRepo _registerRepo;

  // ================= Controllers =================
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  // ================= Data =================
  int? selectedCountryId;
  int? selectedLocationId;
  bool availableToCreateCar = false;

  // ================= Events =================
  FutureOr<void> _onEvent(
    RegisterEvent event,
    Emitter<RegisterState> emit,
  ) async {
    await event.when(
      started: () async {
        add(const RegisterEvent.getLocations());
      },
      getLocations: () async {
        await _getLocations(emit);
      },
      selectLocation: (locationId) {
        selectedLocationId = locationId;
        debugPrint('📍 Location selected in Bloc: $locationId');
        
        // ✅ احتفظ بالـ locations من الـ state الحالي
        final currentLocations = state.maybeWhen(
          locationsLoaded: (locations) => locations,
          locationSelected: (_, locations) => locations,
          orElse: () => <LocationModel>[],
        );
        
        // ✅ emit state جديد عشان الـ UI يتحدث
        emit(RegisterState.locationSelected(
          locationId: locationId,
          locations: currentLocations,
        ));
      },
      register: () async {
        await _register(emit);
      },
    );
  }

  // ================= Get Locations =================
  Future<void> _getLocations(Emitter<RegisterState> emit) async {
    debugPrint('📍 Getting locations...');
    emit(const RegisterState.locationsLoading());

    final result = await _registerRepo.getLocations();

    await result.when(
      success: (locations) {
        debugPrint('✅ Locations loaded: ${locations.length}');
        emit(RegisterState.locationsLoaded(locations));
      },
      failure: (error) {
        debugPrint('❌ Failed to load locations: $error');
        emit(RegisterState.error(error: error));
      },
    );
  }

  // ================= Register =================
  // ================= Register Method - Fixed =================
Future<void> _register(Emitter<RegisterState> emit) async {
  debugPrint('📝 Starting registration...');
  debugPrint('   Full Name: ${fullNameController.text}');
  debugPrint('   Email: ${emailController.text}');
  debugPrint('   Phone: ${phoneController.text}');
  debugPrint('   Country ID: $selectedCountryId');
  debugPrint('   Location ID: $selectedLocationId');

  if (!formKey.currentState!.validate()) {
    debugPrint('❌ Form validation failed');
    return;
  }

  if (selectedCountryId == null || selectedLocationId == null) {
    debugPrint('❌ Country or Location not selected');
    emit(
      const RegisterState.error(
        error: 'Please select country and location',
      ),
    );
    return;
  }

  emit(const RegisterState.loading());

  final request = RegisterRequestModel(
    fullName: fullNameController.text.trim(),
    email: emailController.text.trim(),
    phone: phoneController.text.trim(),
    password: passwordController.text.trim(),
    countryId: selectedCountryId!,
    locationId: selectedLocationId!,
    availableToCreateCar: availableToCreateCar,
  );

  final result = await _registerRepo.register(request);

 await  result.when(
    success: (response) async {
      debugPrint('✅ Registration successful!');
      
      await SharedPref().setString(
        PrefKeys.accessToken,
        response.tokens.accessToken,
      );
      await SharedPref().setString(
        PrefKeys.refreshToken,
        response.tokens.refreshToken,
      );
      await SharedPref().setInt(
        PrefKeys.userId,
        response.userInfo.id,
      );

      debugPrint('💾 Tokens saved');
      
      // ✅ تأكد إن الـ emit بيحصل بعد حفظ الـ tokens
      emit(RegisterState.success(response));
      
      debugPrint('✅ Success state emitted!');
    },
    failure: (error) {
      debugPrint('❌ Registration failed: $error');
      emit(RegisterState.error(error: error));
    },
  );
}

  // ================= Helpers =================
  void setCountry(int id) {
    selectedCountryId = id;
    debugPrint('🌍 Country selected: $id');
  }

  void toggleAvailableToCreateCar(bool value) {
    availableToCreateCar = value;
    debugPrint('🚗 Available to create car: $value');
  }

  @override
  Future<void> close() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
