import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/car/home/data/models/car_nerst_model.dart';
import 'package:flutter/material.dart';

class ListNerestCars extends StatelessWidget {
  const ListNerestCars({super.key, required this.cars});

  final List<CarNerstModel> cars;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: SmoothListView.builder(
        duration: const Duration(milliseconds: 300),
        scrollDirection: Axis.horizontal,
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: context.color.stroke,
            ),
            width: 390,

            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomImage(
              imageType: ImagesType.network,
              imagePath: car.firstImage,
              width: 320,
              boxFit: BoxFit.contain,
            ),
          );
        },
      ),
    );
  }
}
