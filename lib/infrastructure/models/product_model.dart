import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  factory ProductModel({
    @Default(0) int ID,
    @Default('') String productName,
    @Default(0) int stock,
    @Default(0.0) double priceIn,
    @Default(0.0) double priceOut,
  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  factory ProductModel.fromObjectJson(Object? json) => ProductModel.fromJson(json as Map<String, dynamic>);
}
