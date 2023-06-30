// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      productID: json['productID'] as String,
      productName: json['productName'] as String,
      stock: json['stock'] as int? ?? 0,
      priceIn: (json['priceIn'] as num?)?.toDouble() ?? 0,
      priceOut: (json['priceOut'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'productID': instance.productID,
      'productName': instance.productName,
      'stock': instance.stock,
      'priceIn': instance.priceIn,
      'priceOut': instance.priceOut,
    };
