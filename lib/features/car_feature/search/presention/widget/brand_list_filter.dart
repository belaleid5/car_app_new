import 'package:car_app_new/core/common/model/brand_model.dart';
import 'package:car_app_new/core/common/model/brands_response_model.dart';
import 'package:car_app_new/core/common/widgets/list_view.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_bloc.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_event.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/brand_tap.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandsListFilter extends StatefulWidget {
  const BrandsListFilter({super.key, required this.brands});

  final List<BrandsResponseModel> brands;

  @override
  State<BrandsListFilter> createState() => _BrandsListFilterState();
}

class _BrandsListFilterState extends State<BrandsListFilter> {
  int selectedIndex = 0;

  List<BrandModel> get _brands => widget.brands.expand((e) => e.data).toList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: PaginatedListView(
        hasMore: false,
        scrollDirection: Axis.horizontal,
        itemCount: _brands.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: BrandTap(
                brand: const BrandModel(
                  id: 0,
                  name: 'ALL',
                  image: AppImages.allBrandsImage,
                ),
                isSelected: selectedIndex == 0,
                onTap: () => setState(() {
                  selectedIndex = 0;
                  context.read<FilterSearchBloc>().add(
                    const FilterSearchEvent.search(),
                  );
                }),
              ),
            );
          }

          final brand = _brands[index - 1];
          return BrandTap(
            brand: brand,
            isSelected: selectedIndex == index,
            onTap: () => setState(() {
              selectedIndex = index;
              context.read<FilterSearchBloc>().add(
                FilterSearchEvent.search(brandId: brand.id),
              );
            }),
          );
        },
      ),
    );
  }
}
