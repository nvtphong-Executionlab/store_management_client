// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      ID: json['ID'] as int? ?? 0,
      productName: json['ProductName'] as String? ?? '',
      stock: json['Stock'] as int? ?? 0,
      priceIn: (json['PriceIn'] as num?)?.toDouble() ?? 0.0,
      priceOut: (json['PriceOut'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'ID': instance.ID,
      'ProductName': instance.productName,
      'Stock': instance.stock,
      'PriceIn': instance.priceIn,
      'PriceOut': instance.priceOut,
    };
