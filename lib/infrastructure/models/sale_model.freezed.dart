// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleModel _$SaleModelFromJson(Map<String, dynamic> json) {
  return _SaleModel.fromJson(json);
}

/// @nodoc
mixin _$SaleModel {
  int get ID => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleModelCopyWith<SaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleModelCopyWith<$Res> {
  factory $SaleModelCopyWith(SaleModel value, $Res Function(SaleModel) then) =
      _$SaleModelCopyWithImpl<$Res, SaleModel>;
  @useResult
  $Res call({int ID, double totalPrice});
}

/// @nodoc
class _$SaleModelCopyWithImpl<$Res, $Val extends SaleModel>
    implements $SaleModelCopyWith<$Res> {
  _$SaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      ID: null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaleModelCopyWith<$Res> implements $SaleModelCopyWith<$Res> {
  factory _$$_SaleModelCopyWith(
          _$_SaleModel value, $Res Function(_$_SaleModel) then) =
      __$$_SaleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ID, double totalPrice});
}

/// @nodoc
class __$$_SaleModelCopyWithImpl<$Res>
    extends _$SaleModelCopyWithImpl<$Res, _$_SaleModel>
    implements _$$_SaleModelCopyWith<$Res> {
  __$$_SaleModelCopyWithImpl(
      _$_SaleModel _value, $Res Function(_$_SaleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = null,
    Object? totalPrice = null,
  }) {
    return _then(_$_SaleModel(
      ID: null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_SaleModel extends _SaleModel {
  const _$_SaleModel({required this.ID, required this.totalPrice}) : super._();

  factory _$_SaleModel.fromJson(Map<String, dynamic> json) =>
      _$$_SaleModelFromJson(json);

  @override
  final int ID;
  @override
  final double totalPrice;

  @override
  String toString() {
    return 'SaleModel(ID: $ID, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleModel &&
            (identical(other.ID, ID) || other.ID == ID) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ID, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleModelCopyWith<_$_SaleModel> get copyWith =>
      __$$_SaleModelCopyWithImpl<_$_SaleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleModelToJson(
      this,
    );
  }
}

abstract class _SaleModel extends SaleModel {
  const factory _SaleModel(
      {required final int ID, required final double totalPrice}) = _$_SaleModel;
  const _SaleModel._() : super._();

  factory _SaleModel.fromJson(Map<String, dynamic> json) =
      _$_SaleModel.fromJson;

  @override
  int get ID;
  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_SaleModelCopyWith<_$_SaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
