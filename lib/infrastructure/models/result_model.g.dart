// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationResponse<T> _$$_PaginationResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_PaginationResponse<T>(
      currentPage: json['currentPage'] as int,
      data:
          (json['data'] as List<dynamic>?)?.map(fromJsonT).toList() ?? const [],
      totalItems: json['totalItems'] as int,
      totalPages: json['totalPages'] as int,
    );

Map<String, dynamic> _$$_PaginationResponseToJson<T>(
  _$_PaginationResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'data': instance.data.map(toJsonT).toList(),
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
    };
