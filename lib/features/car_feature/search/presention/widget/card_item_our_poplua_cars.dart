import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/common/widgets/price_widget.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car-ratig.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car_name.dart';
import 'package:flutter/material.dart';

class CardItemOurPopluarCars extends StatelessWidget {
  const CardItemOurPopluarCars({
    super.key,
    required this.cars,
  });
  final CarsModel cars;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      child: Card(
        elevation: 0,
        color: context.color.stroke,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    CustomImage(
      imageType: ImagesType.networkSvg, 
      fallbackPath: AppImages.whiteFerrari,
      imagePath: cars.firstImage, 
      height: 70,
      width: 120,
    ),

    Expanded( 
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(child: CarName(name: cars.name)),
          CarRating(rate: cars.reviewsAvg),
          PriceWidget(price: cars.price),
        ],
      ),
    ),
  ],
),
        ),
      ),
    );
  }
}
