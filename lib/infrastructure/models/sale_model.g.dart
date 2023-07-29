// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaleModel _$$_SaleModelFromJson(Map<String, dynamic> json) => _$_SaleModel(
      ID: json['ID'] as int,
      totalPrice: (json['TotalPrice'] as num).toDouble(),
      createdAt: json['CreatedAt'] == null
          ? null
          : DateTime.parse(json['CreatedAt'] as String),
    );

Map<String, dynamic> _$$_SaleModelToJson(_$_SaleModel instance) =>
    <String, dynamic>{
      'ID': instance.ID,
      'TotalPrice': instance.totalPrice,
      'CreatedAt': instance.createdAt?.toIso8601String(),
    };
