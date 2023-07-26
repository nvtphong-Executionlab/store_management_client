import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationResponse<T> with _$PaginationResponse<T> {
  const PaginationResponse._();
  const factory PaginationResponse({
    required int currentPage,
    @Default([]) List<T> data,
    required int totalItems,
    required int totalPages,
  }) = _PaginationResponse<T>;

  factory PaginationResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationResponseFromJson(json, fromJsonT);
}
