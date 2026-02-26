import 'package:car_app_new/features/auth_feature/presention/manger/bloc_register/register_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/sign_up/location_drowpdwon_widget.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/sign_up/location_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomLocationDropdown extends StatefulWidget {
  const CustomLocationDropdown({super.key});

  @override
  State<CustomLocationDropdown> createState() => _CustomLocationDropdownState();
}

class _CustomLocationDropdownState extends State<CustomLocationDropdown> {
  @override
  void initState() {
    super.initState();
    context.read<RegisterBloc>().add(const RegisterEvent.getLocations());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) {
        return current.maybeWhen(
          locationsLoading: () => true,
          locationsLoaded: (_) => true,
          locationSelected: (_, _) => true, 
          orElse: () => false,
        );
      },
      builder: (context, state) {
        final bloc = context.read<RegisterBloc>();

        return state.maybeWhen(
          locationsLoading: () => const LoadingLocationWidget(),
          
          locationsLoaded: (locations) {
            return LocationDropdownWidget(
              locations: locations,
              selectedId: bloc.selectedLocationId,
              onChanged: (value) {
                if (value != null) {
                  bloc.add(RegisterEvent.selectLocation(value));
                }
              },
            );
          },
          
          locationSelected: (locationId, locations) {
            return LocationDropdownWidget(
              locations: locations,
              selectedId: locationId,
              onChanged: (value) {
                if (value != null) {
                  bloc.add(RegisterEvent.selectLocation(value));
                }
              },
            );
          },
          
          orElse: () => LocationDropdownWidget(
            locations: const [],
            selectedId: null,
            onChanged: (_) {},
          ),
        );
      },
    );
  }
}
