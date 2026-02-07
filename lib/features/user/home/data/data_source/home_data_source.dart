import 'package:car_app_new/core/constants/api_constants.dart';
import 'package:car_app_new/core/di/di.dart';
import 'package:car_app_new/features/user/home/data/models/brand_model.dart';
import 'package:car_app_new/features/user/home/data/models/cars_model.dart';
import 'package:dio/dio.dart';

abstract class HomeCarsRemoteDataSource {
  Future<List<CarsModel>> getBestCars({
    
  int ? page,
  int ? limit,
  });

  Future<CarsModel> getCarById(int id);

  Future<List<BrandModel>> getAllBrands();

  Future<List<CarsModel>> getCarsByBrand(int brandId);
}

class HomeCarsRemoteDataSourceImpl implements HomeCarsRemoteDataSource {
  HomeCarsRemoteDataSourceImpl();

  @override
  Future<List<CarsModel>> getBestCars({
    int? page,
    int? limit,
  }) async {
    final queryParameters = _buildQueryParameters(
      page: page,
      limit: limit,
     
    );

    final response = await sl<Dio>().get(
      ApiConstants.carsEndpoint,
      queryParameters: queryParameters,
    );

    return _parseCarsListResponse(response.data);
  }



  @override
  Future<CarsModel> getCarById(int id) async {
    final response = await sl<Dio>().get(
      '${ApiConstants.carsEndpoint}/$id',
    );

    return _parseCarResponse(response.data);
  }

  @override
  Future<List<BrandModel>> getAllBrands() async {
    final response = await sl<Dio>().get(ApiConstants.brandsEndpoint);

    return _parseBrandsListResponse(response.data);
  }

  @override
  Future<List<CarsModel>> getCarsByBrand(int brandId) async {
    final response = await sl<Dio>().get(
      ApiConstants.carsEndpoint,
      queryParameters: {'brand_id': brandId},
    );

    return _parseCarsListResponse(response.data);
  }

  Map<String, dynamic> _buildQueryParameters({
    int? page,
    int? limit,
    String? search,
    int? brandId,
    String? carType,
    bool? isForRent,
    bool? isForPay,
  }) {
    final params = <String, dynamic>{};

    if (page != null) params['page'] = page;
    if (limit != null) params['limit'] = limit;
    if (search != null && search.isNotEmpty) params['search'] = search;
    if (brandId != null) params['brand_id'] = brandId;
    if (carType != null) params['car_type'] = carType;
    if (isForRent != null) params['is_for_rent'] = isForRent;
    if (isForPay != null) params['is_for_pay'] = isForPay;

    return params;
  }

  List<CarsModel> _parseCarsListResponse(dynamic data) {
  try {
    final rawList =
        data is List
            ? data
            : data['data'] is List
                ? data['data']
                : data['data']?['cars'] ??
                  data['results'] ??
                  data['cars'];

    if (rawList == null) {
      throw Exception('Cars list is null');
    }

    return (rawList as List)
        .map((e) => CarsModel.fromJson(e as Map<String, dynamic>))
        .toList();
  } catch (e) {
    print('PARSE ERROR => $e');
    rethrow;
  }
}


  CarsModel _parseCarResponse(dynamic data) {
    try {
      final carJson = data is Map<String, dynamic>
          ? (data['data'] ?? data)
          : data;

      return CarsModel.fromJson(carJson as Map<String, dynamic>);
    } catch (e) {
      throw Exception('Failed to parse car: $e');
    }
  }

  List<BrandModel> _parseBrandsListResponse(dynamic data) {
    try {
      final brandsList =
          (data is List
                  ? data
                  : (data['data'] ?? data['results'] ?? data['brands']))
              as List<dynamic>;

      return brandsList
          .map((json) => BrandModel.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw Exception('Failed to parse brands list: $e');
    }
  }
}
