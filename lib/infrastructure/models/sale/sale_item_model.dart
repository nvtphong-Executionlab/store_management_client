import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_management_client/infrastructure/models/product/product_model.dart';

part 'sale_item_model.freezed.dart';
part 'sale_item_model.g.dart';

@freezed
class SaleItem with _$SaleItem {
  const SaleItem._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory SaleItem({
    required int saleID,
    required String ID, // productID
    required int stock,
    required ProductModel product,
  }) = _SaleItem;
  factory SaleItem.fromJson(Map<String, dynamic> json) =>
      _$SaleItemFromJson(json);
}

@freezed
class SaleDetail with _$SaleDetail {
  const SaleDetail._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory SaleDetail({
    @Default([]) List<SaleItem> items,
    required double totalPrice,
  }) = _SaleDetail;
  factory SaleDetail.fromJson(Map<String, dynamic> json) =>
      _$SaleDetailFromJson(json);
}
