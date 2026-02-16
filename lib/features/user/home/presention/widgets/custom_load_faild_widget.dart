import 'package:car_app_new/features/user/home/presention/manger/bloc_brands/brands_bloc.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc_brands/brands_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFailedLoadWidget extends StatelessWidget {
  const CustomFailedLoadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 40.w, color: Colors.red),
            SizedBox(height: 8.h),
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
