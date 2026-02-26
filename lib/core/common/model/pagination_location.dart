import 'package:json_annotation/json_annotation.dart';

part 'pagination_location.g.dart';

@JsonSerializable()
class PaginationLinks {

  PaginationLinks({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  factory PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksFromJson(json);
  final String? first;
  final String? last;
  final String? prev;
  final String? next;

  Map<String, dynamic> toJson() => _$PaginationLinksToJson(this);
}

@JsonSerializable()
class PaginationMeta {

  PaginationMeta({
    required this.currentPage,
    this.from,
    required this.lastPage,
    required this.path,
    required this.perPage,
    this.to,
    required this.total,
  });

  factory PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);
  @JsonKey(name: 'current_page')
  final int currentPage;
  final int? from;
  @JsonKey(name: 'last_page')
  final int lastPage;
  final String path;
  @JsonKey(name: 'per_page')
  final int perPage;
  final int? to;
  final int total;

  Map<String, dynamic> toJson() => _$PaginationMetaToJson(this);
}
