import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/extensions/custom_shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerCardItemOurPopularCars extends StatelessWidget {
  const ShimmerCardItemOurPopularCars({super.key});

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

              ShimmerWidget.rounded(
                height: 70,
                width: 60,
              ),


              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
   
                  ShimmerWidget.text(
                    width: 120,
                  ),
                  const SizedBox(height: 8),


                  ShimmerWidget.text(
                    width: 80,
                    height: 14,
                  ),
                  const SizedBox(height: 8),

     
                  ShimmerWidget.text(
                    width: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
