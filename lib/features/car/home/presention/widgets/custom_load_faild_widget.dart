import 'package:car_app_new/features/car/home/presention/manger/bloc_brands/brands_bloc.dart';
import 'package:car_app_new/features/car/home/presention/manger/bloc_brands/brands_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFailedLoadWidget extends StatelessWidget {
  const CustomFailedLoadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 40, color: Colors.red),
            const SizedBox(height: 8),
            const Text('Failed to load brands'),
            TextButton.icon(
              onPressed: () {
                context.read<BrandsBloc>().add(
                  const BrandsEvent.getBrands(),
                );
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
