// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) {
  return _StoreModel.fromJson(json);
}

/// @nodoc
mixin _$StoreModel {
  int get ID => throw _privateConstructorUsedError;
  String get storeName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreModelCopyWith<StoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreModelCopyWith<$Res> {
  factory $StoreModelCopyWith(
          StoreModel value, $Res Function(StoreModel) then) =
      _$StoreModelCopyWithImpl<$Res, StoreModel>;
  @useResult
  $Res call({int ID, String storeName, String address});
}

/// @nodoc
class _$StoreModelCopyWithImpl<$Res, $Val extends StoreModel>
    implements $StoreModelCopyWith<$Res> {
  _$StoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = null,
    Object? storeName = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      ID: null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreModelCopyWith<$Res>
    implements $StoreModelCopyWith<$Res> {
  factory _$$_StoreModelCopyWith(
          _$_StoreModel value, $Res Function(_$_StoreModel) then) =
      __$$_StoreModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ID, String storeName, String address});
}

/// @nodoc
class __$$_StoreModelCopyWithImpl<$Res>
    extends _$StoreModelCopyWithImpl<$Res, _$_StoreModel>
    implements _$$_StoreModelCopyWith<$Res> {
  __$$_StoreModelCopyWithImpl(
      _$_StoreModel _value, $Res Function(_$_StoreModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = null,
    Object? storeName = null,
    Object? address = null,
  }) {
    return _then(_$_StoreModel(
      ID: null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_StoreModel extends _StoreModel {
  const _$_StoreModel(
      {required this.ID, required this.storeName, required this.address})
      : super._();

  factory _$_StoreModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreModelFromJson(json);

  @override
  final int ID;
  @override
  final String storeName;
  @override
  final String address;

  @override
  String toString() {
    return 'StoreModel(ID: $ID, storeName: $storeName, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreModel &&
            (identical(other.ID, ID) || other.ID == ID) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ID, storeName, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreModelCopyWith<_$_StoreModel> get copyWith =>
      __$$_StoreModelCopyWithImpl<_$_StoreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreModelToJson(
      this,
    );
  }
}

abstract class _StoreModel extends StoreModel {
  const factory _StoreModel(
      {required final int ID,
      required final String storeName,
      required final String address}) = _$_StoreModel;
  const _StoreModel._() : super._();

  factory _StoreModel.fromJson(Map<String, dynamic> json) =
      _$_StoreModel.fromJson;

  @override
  int get ID;
  @override
  String get storeName;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_StoreModelCopyWith<_$_StoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}
