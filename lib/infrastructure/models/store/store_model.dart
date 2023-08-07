import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_model.freezed.dart';
part 'store_model.g.dart';

@freezed
class StoreModel with _$StoreModel {
  const StoreModel._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory StoreModel({
    required int ID,
    required String storeName,
    required String address,
  }) = _StoreModel;
  factory StoreModel.fromJson(Map<String, dynamic> json) => _$StoreModelFromJson(json);
}
