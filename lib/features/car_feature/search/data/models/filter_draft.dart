class SearchFilter {
  const SearchFilter({
    this.query,
    this.brandId,
    this.carType,
    this.typePayment,
    this.colorId,
    this.locationId,
    this.seatingCapacity,
    this.fuelType,
  });

  final String? query;
  final int? brandId;
  final String? carType;
  final String? typePayment;
  final int? colorId;
  final int? locationId;
  final int? seatingCapacity;
  final String? fuelType;

  // ✅ أضف copyWith
  SearchFilter copyWith({
    String? query,
    int? brandId,
    String? carType,
    String? typePayment,
    int? colorId,
    int? locationId,
    int? seatingCapacity,
    String? fuelType,
  }) =>
      SearchFilter(
        query: query ?? this.query,
        brandId: brandId ?? this.brandId,
        carType: carType ?? this.carType,
        typePayment: typePayment ?? this.typePayment,
        colorId: colorId ?? this.colorId,
        locationId: locationId ?? this.locationId,
        seatingCapacity: seatingCapacity ?? this.seatingCapacity,
        fuelType: fuelType ?? this.fuelType,
      );
}
class SearchPagination {
  const SearchPagination({
    this.currentPage = 1,
    this.lastPage = 1,
    this.total = 0,
    this.hasMore = false,
  });

  final int currentPage;
  final int lastPage;
  final int total;
  final bool hasMore;
}

class FilterDraft {
  const FilterDraft({
    this.carType,
    this.typePayment,
    this.colorId,
    this.seatingCapacity,
    this.fuelType,
    this.minPrice = 10,
    this.maxPrice = 230,
  });

  final String? carType;
  final String? typePayment;
  final int? colorId;
  final int? seatingCapacity;
  final String? fuelType;
  final double minPrice;
  final double maxPrice;

  FilterDraft copyWith({
    String? carType,
    String? typePayment,
    int? colorId,
    int? seatingCapacity,
    String? fuelType,
    double? minPrice,
    double? maxPrice,
    bool clearCarType = false,
    bool clearTypePayment = false,
    bool clearColorId = false,
    bool clearSeatingCapacity = false,
    bool clearFuelType = false,
  }) =>
      FilterDraft(
        carType: clearCarType ? null : carType ?? this.carType,
        typePayment: clearTypePayment ? null : typePayment ?? this.typePayment,
        colorId: clearColorId ? null : colorId ?? this.colorId,
        seatingCapacity: clearSeatingCapacity
            ? null
            : seatingCapacity ?? this.seatingCapacity,
        fuelType: clearFuelType ? null : fuelType ?? this.fuelType,
        minPrice: minPrice ?? this.minPrice,
        maxPrice: maxPrice ?? this.maxPrice,
      );
}