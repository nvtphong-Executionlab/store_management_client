import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();
  const factory ProductModel({
    required String productID,
    required String productName,
    @Default(0) int stock,
    @Default(0) double priceIn,
    required double priceOut,
  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
