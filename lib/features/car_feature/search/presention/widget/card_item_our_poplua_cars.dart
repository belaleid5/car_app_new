
import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/common/widgets/price_widget.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/car-ratig.dart' show CarRating;
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImage(
  imageType: ImagesType.networkSvg,
                imagePath: cars.images.reversed.first.image,
                height: 70,
                width: 60,
              ),

              Column(
                spacing: 5,
                children: [
                  CarName(name: cars.name),
                  CarRating(rate: cars.reviewsAvg),
                  PriceWidget(price: cars.price),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}