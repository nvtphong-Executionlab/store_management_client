// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get ID => throw _privateConstructorUsedError;
  set ID(int value) => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  set productName(String value) => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  set stock(int value) => throw _privateConstructorUsedError;
  double get priceIn => throw _privateConstructorUsedError;
  set priceIn(double value) => throw _privateConstructorUsedError;
  double get priceOut => throw _privateConstructorUsedError;
  set priceOut(double value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int ID, String productName, int stock, double priceIn, double priceOut});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = null,
    Object? productName = null,
    Object? stock = null,
    Object? priceIn = null,
    Object? priceOut = null,
  }) {
    return _then(_value.copyWith(
      ID: null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      priceIn: null == priceIn
          ? _value.priceIn
          : priceIn // ignore: cast_nullable_to_non_nullable
              as double,
      priceOut: null == priceOut
          ? _value.priceOut
          : priceOut // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ID, String productName, int stock, double priceIn, double priceOut});
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ID = null,
    Object? productName = null,
    Object? stock = null,
    Object? priceIn = null,
    Object? priceOut = null,
  }) {
    return _then(_$_ProductModel(
      ID: null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      priceIn: null == priceIn
          ? _value.priceIn
          : priceIn // ignore: cast_nullable_to_non_nullable
              as double,
      priceOut: null == priceOut
          ? _value.priceOut
          : priceOut // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_ProductModel extends _ProductModel {
  _$_ProductModel(
      {this.ID = 0,
      this.productName = '',
      this.stock = 0,
      this.priceIn = 0.0,
      this.priceOut = 0.0})
      : super._();

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  @JsonKey()
  int ID;
  @override
  @JsonKey()
  String productName;
  @override
  @JsonKey()
  int stock;
  @override
  @JsonKey()
  double priceIn;
  @override
  @JsonKey()
  double priceOut;

  @override
  String toString() {
    return 'ProductModel(ID: $ID, productName: $productName, stock: $stock, priceIn: $priceIn, priceOut: $priceOut)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductModel {
  factory _ProductModel(
      {int ID,
      String productName,
      int stock,
      double priceIn,
      double priceOut}) = _$_ProductModel;
  _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int get ID;
  set ID(int value);
  @override
  String get productName;
  set productName(String value);
  @override
  int get stock;
  set stock(int value);
  @override
  double get priceIn;
  set priceIn(double value);
  @override
  double get priceOut;
  set priceOut(double value);
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
