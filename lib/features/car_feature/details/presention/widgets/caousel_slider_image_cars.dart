import 'package:car_app_new/core/common/widgets/main_carousel_slider.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/carousel_dots_indicator.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/carousel_item.dart';
import 'package:flutter/material.dart';

class CarouselSliderImage extends StatefulWidget {
  const CarouselSliderImage({
    super.key,
    required this.items,
    this.height = 220,
    this.autoPlay = true,
    this.autoPlayInterval = const Duration(seconds: 4),
    this.viewportFraction = 0.88,
    this.activeColor,
    this.showIndicator = true,
    this.onPageChanged,
  });

  final List<CarouselItem> items;
  final double height;
  final bool autoPlay;
  final Duration autoPlayInterval;
  final double viewportFraction;
  final Color? activeColor;
  final bool showIndicator;
  final ValueChanged<int>? onPageChanged;

  @override
  State<CarouselSliderImage> createState() => _CarouselSliderImageState();
}

class _CarouselSliderImageState extends State<CarouselSliderImage> {
  int _current = 0;
  late final CarouselControllerSlider _controller;

  @override
  void initState() {
    super.initState();
    _controller = CarouselControllerSlider();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MainCarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: widget.height,
            viewportFraction: widget.viewportFraction,
            autoPlay: widget.autoPlay,
            autoPlayInterval: widget.autoPlayInterval,
            autoPlayAnimationDuration: const Duration(milliseconds: 600),
            autoPlayCurve: Curves.easeInOutCubic,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, _) {
              setState(() => _current = index);
              widget.onPageChanged?.call(index);
            },
          ),
          items: widget.items.map((item) => CarouselCard(item: item)).toList(),
        ),
        if (widget.showIndicator) ...[
          verticalSpace(16),
          CarouselDotIndicator(
            count: widget.items.length,
            currentIndex: _current,
            activeColor: widget.activeColor,
          ),

          verticalSpace(10),
        ],
      ],
    );
  }
}
