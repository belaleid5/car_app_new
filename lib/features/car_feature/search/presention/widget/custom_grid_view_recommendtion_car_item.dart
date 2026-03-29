import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/common/widgets/grid_view.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/car_card_recommendtion_for_you.dart';
import 'package:flutter/material.dart';

class CustomGridViewRecommendtionCarItem extends StatelessWidget {
  const CustomGridViewRecommendtionCarItem({
    super.key,
    required this.cars,
    this.hasMore = false,
  });

  final List<CarsModel> cars;
  final bool hasMore;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: PaginatedGridView(
        itemCount: cars.length,
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 10,
        hasMore: hasMore,
        height: 1.2,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsetsGeometry.only(left: 10),
          child: CarCardRecommendtionForYou(cars: cars[index]),
        ),
      ),
    );
  }
}
