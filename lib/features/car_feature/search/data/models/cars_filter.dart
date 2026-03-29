class CarsFilter {
  const CarsFilter({
    this.query,
    this.brandId,
    this.locationId,
    this.colorId,
    this.seatingCapacity,
    this.fuelType,
    this.type,
    this.minPrice = 0,
    this.maxPrice = 500,
  });

  final String? query;
  final int? brandId;
  final int? locationId;
  final int? colorId;
  final int? seatingCapacity;
  final String? fuelType;
  final String? type;
  final double minPrice;
  final double maxPrice;

  CarsFilter copyWith({
    String? query,
    int? brandId,
    int? locationId,
    int? colorId,
    int? seatingCapacity,
    String? fuelType,
    String? type,
    double? minPrice,
    double? maxPrice,
  }) =>
      CarsFilter(
        query: query ?? this.query,
        brandId: brandId ?? this.brandId,
        locationId: locationId ?? this.locationId,
        colorId: colorId ?? this.colorId,
        seatingCapacity: seatingCapacity ?? this.seatingCapacity,
        fuelType: fuelType ?? this.fuelType,
        type: type ?? this.type,
        minPrice: minPrice ?? this.minPrice,
        maxPrice: maxPrice ?? this.maxPrice,
      );

  CarsFilter reset() => const CarsFilter();
}