import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_bloc.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_event.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_state.dart';
import 'package:car_app_new/features/user/home/presention/widgets/car_card_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestCarsSection extends StatefulWidget {
  const BestCarsSection({super.key});

  @override
  State<BestCarsSection> createState() => _BestCarsSectionState();
}

class _BestCarsSectionState extends State<BestCarsSection> {
  @override
  void initState() {
    super.initState();
    context.read<GetBestCarsBloc>().add(
      const Started(page: 1, limit: 10),
    );
    if (kDebugMode) {
      print('Best Cars Section Initialized');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBestCarsBloc, GetBestCarsState>(
      builder: (context, state) {
        if (state is Initial) {
          print('State: Initial');
          return const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          );
        } else if (state is Loading) {
          print('State: Loading');
          return const SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else if (state is Success) {
          final cars = state.cars;
          print('State: Success with ${cars.length} cars');

          if (cars.isEmpty) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('No cars available'),
                ),
              ),
            );
          }

          return SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 24.sp),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CarCardWidget(car: cars[index]);
                },
                childCount: cars.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 8,
                childAspectRatio: 0.68,
              ),
            ),
          );
        } 

        return const SliverToBoxAdapter(
          child: SizedBox.shrink(),
        );
      },
    );
  }
}
