// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaleItem _$$_SaleItemFromJson(Map<String, dynamic> json) => _$_SaleItem(
      saleID: json['SaleID'] as int,
      ID: json['ID'] as String,
      stock: json['Stock'] as int,
      product: ProductModel.fromJson(json['Product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SaleItemToJson(_$_SaleItem instance) =>
    <String, dynamic>{
      'SaleID': instance.saleID,
      'ID': instance.ID,
      'Stock': instance.stock,
      'Product': instance.product,
    };

_$_SaleDetail _$$_SaleDetailFromJson(Map<String, dynamic> json) =>
    _$_SaleDetail(
      items: (json['Items'] as List<dynamic>?)
              ?.map((e) => SaleItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPrice: (json['TotalPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SaleDetailToJson(_$_SaleDetail instance) =>
    <String, dynamic>{
      'Items': instance.items,
      'TotalPrice': instance.totalPrice,
    };
