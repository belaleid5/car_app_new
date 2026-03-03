import 'package:car_app_new/core/common/widgets/price_widget.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/custom_button_book_now.dart';
import 'package:flutter/material.dart';

class CarFooterCardRecommendtionForYou extends StatelessWidget {
  const CarFooterCardRecommendtionForYou({
    super.key,
    required this.price,
  });

  final String? price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PriceWidget(price: price),

        const CustomButtonBookNow(),
      ],
    );
  }
}
