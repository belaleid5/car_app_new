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

class FilterBottomSheetSearch extends StatelessWidget {
  const FilterBottomSheetSearch._();

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => BlocProvider.value(
        value: context.read<FilterSearchBloc>(),
        child: const FilterBottomSheetSearch._(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final draft = context.read<FilterSearchBloc>().draft;

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
              const HeaderFilter(),
              const CustomDivider(),
              ..._section(
                title: 'Type of Cars',
                child: CarTypeSelector(
                  initialValue: draft.carType,
                  onChanged: (v) => context.read<FilterSearchBloc>().add(
                    FilterSearchEvent.setCarType(v),
                  ),
                ),
              ),
              const CustomDivider(),
              ..._section(
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
                title: 'Rental Time',
                child: CarTextSelector(
                  items: TextListsFilterDataSource.rentalTimes,
                  initialValue: draft.typePayment,
                  onChanged: (v) => context.read<FilterSearchBloc>().add(
                    FilterSearchEvent.setTypePayment(v),
                  ),
                ),
              ),
              const PickUpAndDropDate(),
              const CustomDivider(),
              ..._section(
                title: 'Colors',
                child: ColorSelector(
                  initialColorId: draft.colorId,
                  onChanged: (id) => context.read<FilterSearchBloc>().add(
                    FilterSearchEvent.setColorId(id),
                  ),
                ),
              ),
              ..._section(
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
              FotterFilterBottomSheet(
                onApply: () => _onApply(context),
                onClear: () => _onClear(context),
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

List<Widget> _section({required String title, required Widget child}) => [
  verticalSpace(10),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: CustomTileSection(title: title),
  ),
  verticalSpace(10),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: child,
  ),
  verticalSpace(10),
];
