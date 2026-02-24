import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/core/shared/model/location_model.dart';
import 'package:car_app_new/features/auth_feature/data/models/request/register_request_model.dart';
import 'package:car_app_new/features/auth_feature/data/models/response/user_response_model.dart';
import 'package:car_app_new/features/auth_feature/data/repo/register_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._registerRepo) : super(const RegisterState.initial()) {
    on<RegisterEvent>(_onEvent);
  }

  final RegisterRepo _registerRepo;

  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final nationalIdController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  int? selectedCountryId;
  int? selectedLocationId;
  bool availableToCreateCar = false;

  DateTime? birthDate;
  TimeOfDay? birthTime;

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

        final currentLocations = state.maybeWhen(
          locationsLoaded: (locations) => locations,
          locationSelected: (_, locations) => locations,
          orElse: () => <LocationModel>[],
        );

        emit(
          RegisterState.locationSelected(
            locationId: locationId,
            locations: currentLocations,
          ),
        );
      },
      register: () async {
        await _register(emit);
      },
    );
  }

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

  Future<void> _register(Emitter<RegisterState> emit) async {
    debugPrint('🔍 selectedCountryId: $selectedCountryId');
    debugPrint('🔍 selectedLocationId: $selectedLocationId');
    debugPrint('🔍 dateOfBirth: ${dateOfBirthController.text}');
    debugPrint('🔍 nationalId: ${nationalIdController.text}');

    if (selectedCountryId == null || selectedLocationId == null) {
      emit(
        const RegisterState.error(
          error: 'Please select country and location',
        ),
      );
      return;
    }
    if (dateOfBirthController.text.isEmpty ||
        nationalIdController.text.isEmpty) {
      emit(
        const RegisterState.error(
          error: 'Please enter date of birth and national ID',
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
      dateOfBirth: dateOfBirthController.text.trim(),
      nationalId: nationalIdController.text.trim(),
      availableToCreateCar: availableToCreateCar,
    );
debugPrint('📤 Request JSON: ${request.toJson()}');
    final result = await _registerRepo.register(request);
debugPrint('📤 Request JSON: ${request.toJson()}');
    await result.when(
      success: (response) async {
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
        emit(RegisterState.success(response));
      },
      failure: (error) {
        emit(RegisterState.error(error: error)); // ✅ بيرجع للـ button
      },
    );
  }

  void toggleAvailableToCreateCar(bool value) {
    availableToCreateCar = value;
  }

  void setCountry(int id) {
    selectedCountryId = id;
  }

void setBirthDate(DateTime date) {
  birthDate = date;
  dateOfBirthController.text =
      '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
}  void setBirthTime(TimeOfDay time) => birthTime = time;
}
