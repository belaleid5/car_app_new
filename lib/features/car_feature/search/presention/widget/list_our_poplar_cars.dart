import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/card_item_our_poplua_cars.dart';
import 'package:flutter/material.dart';

class ListOurPopularCars extends StatelessWidget {
  const ListOurPopularCars({
    super.key,
    required this.cars,
  });

  final List<CarsModel> cars;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: SmoothListView.separated(
        scrollDirection: Axis.horizontal,
        duration: const Duration(milliseconds: 600),
        itemBuilder: (BuildContext context, int index) =>
            CardItemOurPopluarCars(cars: cars[index]),
        itemCount: cars.length,
        separatorBuilder: (BuildContext p1, int p2) =>
            const SizedBox.shrink(),
      ),
    );
  }
}
