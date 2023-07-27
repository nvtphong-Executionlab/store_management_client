import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_model.freezed.dart';
part 'sale_model.g.dart';

@freezed
class SaleModel with _$SaleModel {
  const SaleModel._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory SaleModel({required int ID, required double totalPrice}) = _SaleModel;

  factory SaleModel.fromJson(Map<String, dynamic> json) => _$SaleModelFromJson(json);
  factory SaleModel.fromObjectJson(Object? json) => SaleModel.fromJson(json as Map<String, dynamic>);
}
