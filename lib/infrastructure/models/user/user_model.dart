import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory UserModel({
    required int ID,
    required String username,
    required String position,
    required int storeID,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
