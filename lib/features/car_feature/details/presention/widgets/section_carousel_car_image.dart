import 'package:car_app_new/core/common/widgets/list_shimmer_big_image_cars.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_bloc.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_states.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/caousel_slider_image_cars.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionCarouselCarImage extends StatelessWidget {
  const SectionCarouselCarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarDetailsBloc, CarDetailsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const ListShimmerBigImageCars(height: 237),
          loading: () => const ListShimmerBigImageCars(height: 237),

          error: (msg) => SizedBox(
            height: 220,
            child: Center(
              child: Text(msg, style: const TextStyle(color: Colors.red)),
            ),
          ),

          success: (car) {
            final items = car.images
                .map(
                  (img) => CarouselItem(
                    imageUrl: img.image,
                    onTap: () {},
                  ),
                )
                .toList();

            return CarouselSliderImage(
              items: items,
              height: 260,
              autoPlay: items.length > 1,
            );
          },
        );
      },
    );
  }
}
