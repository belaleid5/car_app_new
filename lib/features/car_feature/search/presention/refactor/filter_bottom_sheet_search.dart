import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/common/widgets/fotter_filter_botto_sheet.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/custom_divider.dart';
import 'package:car_app_new/features/car_feature/search/data/local_data_source/texts_list_filter_data_source.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_bloc.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_event.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/car_text_selector.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/cars_type_selector.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/color_selector.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/custom_title_section.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/header_filter.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/pick_ip_and_dop_date.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/price_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  static Future<void> show(BuildContext context) {
    final bloc = context.read<FilterSearchBloc>();

    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => BlocProvider.value(
        value: bloc,
        child: const FilterBottomSheet(),
      ),
    );
  }

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final draft = context.read<FilterSearchBloc>().currentFilter;

    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (_, scrollController) => Container(
        decoration: BoxDecoration(
          color: context.color.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomFadeInDown(
                duration: 400,
                child: HeaderFilter(),
              ),

              const CustomDivider(),

              ..._section(
                duration: 500,
                direction: _Direction.left,
                title: 'Type of Cars',
                child: CarTypeSelector(
                  initialValue: draft.type,
                  onChanged: (v) => context.read<FilterSearchBloc>().add(
                    FilterSearchEvent.setCarType(v),
                  ),
                ),
              ),

              const CustomDivider(),

              ..._section(
                duration: 600,
                direction: _Direction.right,
                title: 'Price Range',
                child: PriceSection(
                  initialMin: draft.minPrice,
                  initialMax: draft.maxPrice,
                  onChanged: (min, max) => context.read<FilterSearchBloc>().add(
                    FilterSearchEvent.setPrice(min, max),
                  ),
                ),
              ),

              const CustomDivider(),

              ..._section(
                duration: 700,
                direction: _Direction.left,
                title: 'Rental Time',
                child: CarTextSelector(
                  items: TextListsFilterDataSource.rentalTimes,
                  onChanged: (v) => context.read<FilterSearchBloc>().add(
                    FilterSearchEvent.setTypePayment(v),
                  ),
                ),
              ),

              const CustomFadeInUp(
                duration: 700,
                child: PickUpAndDropDate(),
              ),

              const CustomDivider(),

              ..._section(
                duration: 800,
                direction: _Direction.right,
                title: 'Colors',
                child: ColorSelector(
                  initialColorId: draft.colorId,
                  onChanged: (id) => context.read<FilterSearchBloc>().add(
                    FilterSearchEvent.setColorId(id),
                  ),
                ),
              ),

              ..._section(
                duration: 900,
                direction: _Direction.left,
                title: 'Seating Capacity',
                child: CarTextSelector(
                  items: TextListsFilterDataSource.seats,
                  initialValue: draft.seatingCapacity?.toString(),
                  onChanged: (v) => context.read<FilterSearchBloc>().add(
                    FilterSearchEvent.setSeatingCapacity(
                      int.tryParse(v ?? ''),
                    ),
                  ),
                ),
              ),

              ..._section(
                duration: 1000,
                direction: _Direction.right,
                title: 'Fuel Type',
                child: CarTextSelector(
                  items: TextListsFilterDataSource.fuelTypes,
                  initialValue: draft.fuelType,
                  onChanged: (v) => context.read<FilterSearchBloc>().add(
                    FilterSearchEvent.setFuelType(v),
                  ),
                ),
              ),

              const CustomDivider(),

              CustomFadeInUp(
                duration: 1100,
                child: FotterFilterBottomSheet(
                  onApply: () => _onApply(context),
                  onClear: () => _onClear(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onApply(BuildContext context) {
    context.read<FilterSearchBloc>().add(const FilterSearchEvent.applyDraft());
    context.pop();
  }

  void _onClear(BuildContext context) {
    context.read<FilterSearchBloc>().add(const FilterSearchEvent.resetDraft());
    context.read<FilterSearchBloc>().add(const FilterSearchEvent.reset());
    context.pop();
  }
}

enum _Direction { left, right, up, down }

List<Widget> _section({
  required String title,
  required Widget child,
  required int duration,
  required _Direction direction,
}) {
  Widget wrap(Widget w) => switch (direction) {
    _Direction.left => CustomFadeInLeft(duration: duration, child: w),
    _Direction.right => CustomFadeInRight(duration: duration, child: w),
    _Direction.up => CustomFadeInUp(duration: duration, child: w),
    _Direction.down => CustomFadeInDown(duration: duration, child: w),
  };

  return [
    verticalSpace(10),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: wrap(CustomTileSection(title: title)),
    ),
    verticalSpace(10),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: wrap(child),
    ),
    verticalSpace(10),
  ];
}