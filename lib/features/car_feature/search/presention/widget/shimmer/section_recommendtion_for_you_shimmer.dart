import 'package:car_app_new/core/common/widgets/grid_view.dart';
import 'package:car_app_new/features/car_feature/home/presention/widgets/shimmer_widget/car_item_card_shimmer.dart';
import 'package:flutter/material.dart';

class SectionRecommendetionForYouShimmer extends StatelessWidget {
  const SectionRecommendetionForYouShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: PaginatedGridView(
        itemCount: 4,
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 10,
        height: 1.2,

        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 5, left: 10,top: 10),
          child: CarItemCatdShimmer(),
        ),
      ),
    );
  }
}
