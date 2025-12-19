import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_usecase.freezed.dart';

// ignore: one_member_abstracts, avoid_types_as_parameter_names
abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure<dynamic>, Type>> call(Params params);
}

@freezed
class NoParams with _$NoParams {
  const factory NoParams() = _NoParams;
}
