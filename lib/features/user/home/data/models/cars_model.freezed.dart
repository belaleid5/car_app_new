// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cars_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarsModel {

 int get id; String get name; String get description; int get owner;@JsonKey(name: 'first_image') String get firstImage; List<CarImageModel> get images;@JsonKey(name: 'car_type') String get carType; BrandModel get brand; ColorModel get color;@JsonKey(name: 'car_features') List<CarFeatureModel> get carFeatures;@JsonKey(name: 'seating_capacity') String get seatingCapacity; LocationResponseModel get location;@JsonKey(name: 'average_rate') int get averageRate;@JsonKey(name: 'is_for_rent') bool get isForRent;@JsonKey(name: 'daily_rent') String? get dailyRent;@JsonKey(name: 'weekly_rent') String? get weeklyRent;@JsonKey(name: 'monthly_rent') String? get monthlyRent;@JsonKey(name: 'yearly_rent') String? get yearlyRent;@JsonKey(name: 'is_for_pay') bool get isForPay; String? get price;@JsonKey(name: 'available_to_book') bool get availableToBook; List<ReviewModel> get reviews;@JsonKey(name: 'reviews_count') int get reviewsCount;@JsonKey(name: 'reviews_avg') double get reviewsAvg;
/// Create a copy of CarsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarsModelCopyWith<CarsModel> get copyWith => _$CarsModelCopyWithImpl<CarsModel>(this as CarsModel, _$identity);

  /// Serializes this CarsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.firstImage, firstImage) || other.firstImage == firstImage)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.carType, carType) || other.carType == carType)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other.carFeatures, carFeatures)&&(identical(other.seatingCapacity, seatingCapacity) || other.seatingCapacity == seatingCapacity)&&(identical(other.location, location) || other.location == location)&&(identical(other.averageRate, averageRate) || other.averageRate == averageRate)&&(identical(other.isForRent, isForRent) || other.isForRent == isForRent)&&(identical(other.dailyRent, dailyRent) || other.dailyRent == dailyRent)&&(identical(other.weeklyRent, weeklyRent) || other.weeklyRent == weeklyRent)&&(identical(other.monthlyRent, monthlyRent) || other.monthlyRent == monthlyRent)&&(identical(other.yearlyRent, yearlyRent) || other.yearlyRent == yearlyRent)&&(identical(other.isForPay, isForPay) || other.isForPay == isForPay)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableToBook, availableToBook) || other.availableToBook == availableToBook)&&const DeepCollectionEquality().equals(other.reviews, reviews)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&(identical(other.reviewsAvg, reviewsAvg) || other.reviewsAvg == reviewsAvg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,description,owner,firstImage,const DeepCollectionEquality().hash(images),carType,brand,color,const DeepCollectionEquality().hash(carFeatures),seatingCapacity,location,averageRate,isForRent,dailyRent,weeklyRent,monthlyRent,yearlyRent,isForPay,price,availableToBook,const DeepCollectionEquality().hash(reviews),reviewsCount,reviewsAvg]);

@override
String toString() {
  return 'CarsModel(id: $id, name: $name, description: $description, owner: $owner, firstImage: $firstImage, images: $images, carType: $carType, brand: $brand, color: $color, carFeatures: $carFeatures, seatingCapacity: $seatingCapacity, location: $location, averageRate: $averageRate, isForRent: $isForRent, dailyRent: $dailyRent, weeklyRent: $weeklyRent, monthlyRent: $monthlyRent, yearlyRent: $yearlyRent, isForPay: $isForPay, price: $price, availableToBook: $availableToBook, reviews: $reviews, reviewsCount: $reviewsCount, reviewsAvg: $reviewsAvg)';
}


}

/// @nodoc
abstract mixin class $CarsModelCopyWith<$Res>  {
  factory $CarsModelCopyWith(CarsModel value, $Res Function(CarsModel) _then) = _$CarsModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String description, int owner,@JsonKey(name: 'first_image') String firstImage, List<CarImageModel> images,@JsonKey(name: 'car_type') String carType, BrandModel brand, ColorModel color,@JsonKey(name: 'car_features') List<CarFeatureModel> carFeatures,@JsonKey(name: 'seating_capacity') String seatingCapacity, LocationResponseModel location,@JsonKey(name: 'average_rate') int averageRate,@JsonKey(name: 'is_for_rent') bool isForRent,@JsonKey(name: 'daily_rent') String? dailyRent,@JsonKey(name: 'weekly_rent') String? weeklyRent,@JsonKey(name: 'monthly_rent') String? monthlyRent,@JsonKey(name: 'yearly_rent') String? yearlyRent,@JsonKey(name: 'is_for_pay') bool isForPay, String? price,@JsonKey(name: 'available_to_book') bool availableToBook, List<ReviewModel> reviews,@JsonKey(name: 'reviews_count') int reviewsCount,@JsonKey(name: 'reviews_avg') double reviewsAvg
});


$BrandModelCopyWith<$Res> get brand;$ColorModelCopyWith<$Res> get color;$LocationResponseModelCopyWith<$Res> get location;

}
/// @nodoc
class _$CarsModelCopyWithImpl<$Res>
    implements $CarsModelCopyWith<$Res> {
  _$CarsModelCopyWithImpl(this._self, this._then);

  final CarsModel _self;
  final $Res Function(CarsModel) _then;

/// Create a copy of CarsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? owner = null,Object? firstImage = null,Object? images = null,Object? carType = null,Object? brand = null,Object? color = null,Object? carFeatures = null,Object? seatingCapacity = null,Object? location = null,Object? averageRate = null,Object? isForRent = null,Object? dailyRent = freezed,Object? weeklyRent = freezed,Object? monthlyRent = freezed,Object? yearlyRent = freezed,Object? isForPay = null,Object? price = freezed,Object? availableToBook = null,Object? reviews = null,Object? reviewsCount = null,Object? reviewsAvg = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as int,firstImage: null == firstImage ? _self.firstImage : firstImage // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<CarImageModel>,carType: null == carType ? _self.carType : carType // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as BrandModel,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as ColorModel,carFeatures: null == carFeatures ? _self.carFeatures : carFeatures // ignore: cast_nullable_to_non_nullable
as List<CarFeatureModel>,seatingCapacity: null == seatingCapacity ? _self.seatingCapacity : seatingCapacity // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationResponseModel,averageRate: null == averageRate ? _self.averageRate : averageRate // ignore: cast_nullable_to_non_nullable
as int,isForRent: null == isForRent ? _self.isForRent : isForRent // ignore: cast_nullable_to_non_nullable
as bool,dailyRent: freezed == dailyRent ? _self.dailyRent : dailyRent // ignore: cast_nullable_to_non_nullable
as String?,weeklyRent: freezed == weeklyRent ? _self.weeklyRent : weeklyRent // ignore: cast_nullable_to_non_nullable
as String?,monthlyRent: freezed == monthlyRent ? _self.monthlyRent : monthlyRent // ignore: cast_nullable_to_non_nullable
as String?,yearlyRent: freezed == yearlyRent ? _self.yearlyRent : yearlyRent // ignore: cast_nullable_to_non_nullable
as String?,isForPay: null == isForPay ? _self.isForPay : isForPay // ignore: cast_nullable_to_non_nullable
as bool,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,availableToBook: null == availableToBook ? _self.availableToBook : availableToBook // ignore: cast_nullable_to_non_nullable
as bool,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,reviewsAvg: null == reviewsAvg ? _self.reviewsAvg : reviewsAvg // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of CarsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandModelCopyWith<$Res> get brand {
  
  return $BrandModelCopyWith<$Res>(_self.brand, (value) {
    return _then(_self.copyWith(brand: value));
  });
}/// Create a copy of CarsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorModelCopyWith<$Res> get color {
  
  return $ColorModelCopyWith<$Res>(_self.color, (value) {
    return _then(_self.copyWith(color: value));
  });
}/// Create a copy of CarsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationResponseModelCopyWith<$Res> get location {
  
  return $LocationResponseModelCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [CarsModel].
extension CarsModelPatterns on CarsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarsModel value)  $default,){
final _that = this;
switch (_that) {
case _CarsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarsModel value)?  $default,){
final _that = this;
switch (_that) {
case _CarsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String description,  int owner, @JsonKey(name: 'first_image')  String firstImage,  List<CarImageModel> images, @JsonKey(name: 'car_type')  String carType,  BrandModel brand,  ColorModel color, @JsonKey(name: 'car_features')  List<CarFeatureModel> carFeatures, @JsonKey(name: 'seating_capacity')  String seatingCapacity,  LocationResponseModel location, @JsonKey(name: 'average_rate')  int averageRate, @JsonKey(name: 'is_for_rent')  bool isForRent, @JsonKey(name: 'daily_rent')  String? dailyRent, @JsonKey(name: 'weekly_rent')  String? weeklyRent, @JsonKey(name: 'monthly_rent')  String? monthlyRent, @JsonKey(name: 'yearly_rent')  String? yearlyRent, @JsonKey(name: 'is_for_pay')  bool isForPay,  String? price, @JsonKey(name: 'available_to_book')  bool availableToBook,  List<ReviewModel> reviews, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'reviews_avg')  double reviewsAvg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CarsModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.owner,_that.firstImage,_that.images,_that.carType,_that.brand,_that.color,_that.carFeatures,_that.seatingCapacity,_that.location,_that.averageRate,_that.isForRent,_that.dailyRent,_that.weeklyRent,_that.monthlyRent,_that.yearlyRent,_that.isForPay,_that.price,_that.availableToBook,_that.reviews,_that.reviewsCount,_that.reviewsAvg);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String description,  int owner, @JsonKey(name: 'first_image')  String firstImage,  List<CarImageModel> images, @JsonKey(name: 'car_type')  String carType,  BrandModel brand,  ColorModel color, @JsonKey(name: 'car_features')  List<CarFeatureModel> carFeatures, @JsonKey(name: 'seating_capacity')  String seatingCapacity,  LocationResponseModel location, @JsonKey(name: 'average_rate')  int averageRate, @JsonKey(name: 'is_for_rent')  bool isForRent, @JsonKey(name: 'daily_rent')  String? dailyRent, @JsonKey(name: 'weekly_rent')  String? weeklyRent, @JsonKey(name: 'monthly_rent')  String? monthlyRent, @JsonKey(name: 'yearly_rent')  String? yearlyRent, @JsonKey(name: 'is_for_pay')  bool isForPay,  String? price, @JsonKey(name: 'available_to_book')  bool availableToBook,  List<ReviewModel> reviews, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'reviews_avg')  double reviewsAvg)  $default,) {final _that = this;
switch (_that) {
case _CarsModel():
return $default(_that.id,_that.name,_that.description,_that.owner,_that.firstImage,_that.images,_that.carType,_that.brand,_that.color,_that.carFeatures,_that.seatingCapacity,_that.location,_that.averageRate,_that.isForRent,_that.dailyRent,_that.weeklyRent,_that.monthlyRent,_that.yearlyRent,_that.isForPay,_that.price,_that.availableToBook,_that.reviews,_that.reviewsCount,_that.reviewsAvg);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String description,  int owner, @JsonKey(name: 'first_image')  String firstImage,  List<CarImageModel> images, @JsonKey(name: 'car_type')  String carType,  BrandModel brand,  ColorModel color, @JsonKey(name: 'car_features')  List<CarFeatureModel> carFeatures, @JsonKey(name: 'seating_capacity')  String seatingCapacity,  LocationResponseModel location, @JsonKey(name: 'average_rate')  int averageRate, @JsonKey(name: 'is_for_rent')  bool isForRent, @JsonKey(name: 'daily_rent')  String? dailyRent, @JsonKey(name: 'weekly_rent')  String? weeklyRent, @JsonKey(name: 'monthly_rent')  String? monthlyRent, @JsonKey(name: 'yearly_rent')  String? yearlyRent, @JsonKey(name: 'is_for_pay')  bool isForPay,  String? price, @JsonKey(name: 'available_to_book')  bool availableToBook,  List<ReviewModel> reviews, @JsonKey(name: 'reviews_count')  int reviewsCount, @JsonKey(name: 'reviews_avg')  double reviewsAvg)?  $default,) {final _that = this;
switch (_that) {
case _CarsModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.owner,_that.firstImage,_that.images,_that.carType,_that.brand,_that.color,_that.carFeatures,_that.seatingCapacity,_that.location,_that.averageRate,_that.isForRent,_that.dailyRent,_that.weeklyRent,_that.monthlyRent,_that.yearlyRent,_that.isForPay,_that.price,_that.availableToBook,_that.reviews,_that.reviewsCount,_that.reviewsAvg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CarsModel implements CarsModel {
  const _CarsModel({required this.id, required this.name, required this.description, required this.owner, @JsonKey(name: 'first_image') required this.firstImage, required final  List<CarImageModel> images, @JsonKey(name: 'car_type') required this.carType, required this.brand, required this.color, @JsonKey(name: 'car_features') required final  List<CarFeatureModel> carFeatures, @JsonKey(name: 'seating_capacity') required this.seatingCapacity, required this.location, @JsonKey(name: 'average_rate') required this.averageRate, @JsonKey(name: 'is_for_rent') required this.isForRent, @JsonKey(name: 'daily_rent') this.dailyRent, @JsonKey(name: 'weekly_rent') this.weeklyRent, @JsonKey(name: 'monthly_rent') this.monthlyRent, @JsonKey(name: 'yearly_rent') this.yearlyRent, @JsonKey(name: 'is_for_pay') required this.isForPay, this.price, @JsonKey(name: 'available_to_book') required this.availableToBook, required final  List<ReviewModel> reviews, @JsonKey(name: 'reviews_count') required this.reviewsCount, @JsonKey(name: 'reviews_avg') required this.reviewsAvg}): _images = images,_carFeatures = carFeatures,_reviews = reviews;
  factory _CarsModel.fromJson(Map<String, dynamic> json) => _$CarsModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String description;
@override final  int owner;
@override@JsonKey(name: 'first_image') final  String firstImage;
 final  List<CarImageModel> _images;
@override List<CarImageModel> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey(name: 'car_type') final  String carType;
@override final  BrandModel brand;
@override final  ColorModel color;
 final  List<CarFeatureModel> _carFeatures;
@override@JsonKey(name: 'car_features') List<CarFeatureModel> get carFeatures {
  if (_carFeatures is EqualUnmodifiableListView) return _carFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_carFeatures);
}

@override@JsonKey(name: 'seating_capacity') final  String seatingCapacity;
@override final  LocationResponseModel location;
@override@JsonKey(name: 'average_rate') final  int averageRate;
@override@JsonKey(name: 'is_for_rent') final  bool isForRent;
@override@JsonKey(name: 'daily_rent') final  String? dailyRent;
@override@JsonKey(name: 'weekly_rent') final  String? weeklyRent;
@override@JsonKey(name: 'monthly_rent') final  String? monthlyRent;
@override@JsonKey(name: 'yearly_rent') final  String? yearlyRent;
@override@JsonKey(name: 'is_for_pay') final  bool isForPay;
@override final  String? price;
@override@JsonKey(name: 'available_to_book') final  bool availableToBook;
 final  List<ReviewModel> _reviews;
@override List<ReviewModel> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

@override@JsonKey(name: 'reviews_count') final  int reviewsCount;
@override@JsonKey(name: 'reviews_avg') final  double reviewsAvg;

/// Create a copy of CarsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarsModelCopyWith<_CarsModel> get copyWith => __$CarsModelCopyWithImpl<_CarsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.firstImage, firstImage) || other.firstImage == firstImage)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.carType, carType) || other.carType == carType)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.color, color) || other.color == color)&&const DeepCollectionEquality().equals(other._carFeatures, _carFeatures)&&(identical(other.seatingCapacity, seatingCapacity) || other.seatingCapacity == seatingCapacity)&&(identical(other.location, location) || other.location == location)&&(identical(other.averageRate, averageRate) || other.averageRate == averageRate)&&(identical(other.isForRent, isForRent) || other.isForRent == isForRent)&&(identical(other.dailyRent, dailyRent) || other.dailyRent == dailyRent)&&(identical(other.weeklyRent, weeklyRent) || other.weeklyRent == weeklyRent)&&(identical(other.monthlyRent, monthlyRent) || other.monthlyRent == monthlyRent)&&(identical(other.yearlyRent, yearlyRent) || other.yearlyRent == yearlyRent)&&(identical(other.isForPay, isForPay) || other.isForPay == isForPay)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableToBook, availableToBook) || other.availableToBook == availableToBook)&&const DeepCollectionEquality().equals(other._reviews, _reviews)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&(identical(other.reviewsAvg, reviewsAvg) || other.reviewsAvg == reviewsAvg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,description,owner,firstImage,const DeepCollectionEquality().hash(_images),carType,brand,color,const DeepCollectionEquality().hash(_carFeatures),seatingCapacity,location,averageRate,isForRent,dailyRent,weeklyRent,monthlyRent,yearlyRent,isForPay,price,availableToBook,const DeepCollectionEquality().hash(_reviews),reviewsCount,reviewsAvg]);

@override
String toString() {
  return 'CarsModel(id: $id, name: $name, description: $description, owner: $owner, firstImage: $firstImage, images: $images, carType: $carType, brand: $brand, color: $color, carFeatures: $carFeatures, seatingCapacity: $seatingCapacity, location: $location, averageRate: $averageRate, isForRent: $isForRent, dailyRent: $dailyRent, weeklyRent: $weeklyRent, monthlyRent: $monthlyRent, yearlyRent: $yearlyRent, isForPay: $isForPay, price: $price, availableToBook: $availableToBook, reviews: $reviews, reviewsCount: $reviewsCount, reviewsAvg: $reviewsAvg)';
}


}

/// @nodoc
abstract mixin class _$CarsModelCopyWith<$Res> implements $CarsModelCopyWith<$Res> {
  factory _$CarsModelCopyWith(_CarsModel value, $Res Function(_CarsModel) _then) = __$CarsModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String description, int owner,@JsonKey(name: 'first_image') String firstImage, List<CarImageModel> images,@JsonKey(name: 'car_type') String carType, BrandModel brand, ColorModel color,@JsonKey(name: 'car_features') List<CarFeatureModel> carFeatures,@JsonKey(name: 'seating_capacity') String seatingCapacity, LocationResponseModel location,@JsonKey(name: 'average_rate') int averageRate,@JsonKey(name: 'is_for_rent') bool isForRent,@JsonKey(name: 'daily_rent') String? dailyRent,@JsonKey(name: 'weekly_rent') String? weeklyRent,@JsonKey(name: 'monthly_rent') String? monthlyRent,@JsonKey(name: 'yearly_rent') String? yearlyRent,@JsonKey(name: 'is_for_pay') bool isForPay, String? price,@JsonKey(name: 'available_to_book') bool availableToBook, List<ReviewModel> reviews,@JsonKey(name: 'reviews_count') int reviewsCount,@JsonKey(name: 'reviews_avg') double reviewsAvg
});


@override $BrandModelCopyWith<$Res> get brand;@override $ColorModelCopyWith<$Res> get color;@override $LocationResponseModelCopyWith<$Res> get location;

}
/// @nodoc
class __$CarsModelCopyWithImpl<$Res>
    implements _$CarsModelCopyWith<$Res> {
  __$CarsModelCopyWithImpl(this._self, this._then);

  final _CarsModel _self;
  final $Res Function(_CarsModel) _then;

/// Create a copy of CarsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? owner = null,Object? firstImage = null,Object? images = null,Object? carType = null,Object? brand = null,Object? color = null,Object? carFeatures = null,Object? seatingCapacity = null,Object? location = null,Object? averageRate = null,Object? isForRent = null,Object? dailyRent = freezed,Object? weeklyRent = freezed,Object? monthlyRent = freezed,Object? yearlyRent = freezed,Object? isForPay = null,Object? price = freezed,Object? availableToBook = null,Object? reviews = null,Object? reviewsCount = null,Object? reviewsAvg = null,}) {
  return _then(_CarsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as int,firstImage: null == firstImage ? _self.firstImage : firstImage // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<CarImageModel>,carType: null == carType ? _self.carType : carType // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as BrandModel,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as ColorModel,carFeatures: null == carFeatures ? _self._carFeatures : carFeatures // ignore: cast_nullable_to_non_nullable
as List<CarFeatureModel>,seatingCapacity: null == seatingCapacity ? _self.seatingCapacity : seatingCapacity // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationResponseModel,averageRate: null == averageRate ? _self.averageRate : averageRate // ignore: cast_nullable_to_non_nullable
as int,isForRent: null == isForRent ? _self.isForRent : isForRent // ignore: cast_nullable_to_non_nullable
as bool,dailyRent: freezed == dailyRent ? _self.dailyRent : dailyRent // ignore: cast_nullable_to_non_nullable
as String?,weeklyRent: freezed == weeklyRent ? _self.weeklyRent : weeklyRent // ignore: cast_nullable_to_non_nullable
as String?,monthlyRent: freezed == monthlyRent ? _self.monthlyRent : monthlyRent // ignore: cast_nullable_to_non_nullable
as String?,yearlyRent: freezed == yearlyRent ? _self.yearlyRent : yearlyRent // ignore: cast_nullable_to_non_nullable
as String?,isForPay: null == isForPay ? _self.isForPay : isForPay // ignore: cast_nullable_to_non_nullable
as bool,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,availableToBook: null == availableToBook ? _self.availableToBook : availableToBook // ignore: cast_nullable_to_non_nullable
as bool,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,reviewsAvg: null == reviewsAvg ? _self.reviewsAvg : reviewsAvg // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of CarsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandModelCopyWith<$Res> get brand {
  
  return $BrandModelCopyWith<$Res>(_self.brand, (value) {
    return _then(_self.copyWith(brand: value));
  });
}/// Create a copy of CarsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ColorModelCopyWith<$Res> get color {
  
  return $ColorModelCopyWith<$Res>(_self.color, (value) {
    return _then(_self.copyWith(color: value));
  });
}/// Create a copy of CarsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationResponseModelCopyWith<$Res> get location {
  
  return $LocationResponseModelCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

// dart format on
