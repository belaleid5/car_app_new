// search_pagination.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_pagination.freezed.dart';

@freezed
sealed class SearchPagination with _$SearchPagination {
  const factory SearchPagination({
    @Default(1) int currentPage,
    @Default(1) int lastPage,
    @Default(false) bool hasMore,
    @Default(0) int total,
  }) = _SearchPagination;
}