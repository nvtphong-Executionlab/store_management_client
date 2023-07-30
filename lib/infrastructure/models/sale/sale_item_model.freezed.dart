// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleItem _$SaleItemFromJson(Map<String, dynamic> json) {
  return _SaleItem.fromJson(json);
}

/// @nodoc
mixin _$SaleItem {
  int get saleID => throw _privateConstructorUsedError;
  int get ID => throw _privateConstructorUsedError; // productID
  int get stock => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleItemCopyWith<SaleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleItemCopyWith<$Res> {
  factory $SaleItemCopyWith(SaleItem value, $Res Function(SaleItem) then) =
      _$SaleItemCopyWithImpl<$Res, SaleItem>;
  @useResult
  $Res call({int saleID, int ID, int stock, ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$SaleItemCopyWithImpl<$Res, $Val extends SaleItem>
    implements $SaleItemCopyWith<$Res> {
  _$SaleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleID = null,
    Object? ID = null,
    Object? stock = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      saleID: null == saleID
          ? _value.saleID
          : saleID // ignore: cast_nullable_to_non_nullable
              as int,
      ID: null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SaleItemCopyWith<$Res> implements $SaleItemCopyWith<$Res> {
  factory _$$_SaleItemCopyWith(
          _$_SaleItem value, $Res Function(_$_SaleItem) then) =
      __$$_SaleItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int saleID, int ID, int stock, ProductModel product});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_SaleItemCopyWithImpl<$Res>
    extends _$SaleItemCopyWithImpl<$Res, _$_SaleItem>
    implements _$$_SaleItemCopyWith<$Res> {
  __$$_SaleItemCopyWithImpl(
      _$_SaleItem _value, $Res Function(_$_SaleItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleID = null,
    Object? ID = null,
    Object? stock = null,
    Object? product = null,
  }) {
    return _then(_$_SaleItem(
      saleID: null == saleID
          ? _value.saleID
          : saleID // ignore: cast_nullable_to_non_nullable
              as int,
      ID: null == ID
          ? _value.ID
          : ID // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_SaleItem extends _SaleItem {
  const _$_SaleItem(
      {required this.saleID,
      required this.ID,
      required this.stock,
      required this.product})
      : super._();

  factory _$_SaleItem.fromJson(Map<String, dynamic> json) =>
      _$$_SaleItemFromJson(json);

  @override
  final int saleID;
  @override
  final int ID;
// productID
  @override
  final int stock;
  @override
  final ProductModel product;

  @override
  String toString() {
    return 'SaleItem(saleID: $saleID, ID: $ID, stock: $stock, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleItem &&
            (identical(other.saleID, saleID) || other.saleID == saleID) &&
            (identical(other.ID, ID) || other.ID == ID) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, saleID, ID, stock, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleItemCopyWith<_$_SaleItem> get copyWith =>
      __$$_SaleItemCopyWithImpl<_$_SaleItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleItemToJson(
      this,
    );
  }
}

abstract class _SaleItem extends SaleItem {
  const factory _SaleItem(
      {required final int saleID,
      required final int ID,
      required final int stock,
      required final ProductModel product}) = _$_SaleItem;
  const _SaleItem._() : super._();

  factory _SaleItem.fromJson(Map<String, dynamic> json) = _$_SaleItem.fromJson;

  @override
  int get saleID;
  @override
  int get ID;
  @override // productID
  int get stock;
  @override
  ProductModel get product;
  @override
  @JsonKey(ignore: true)
  _$$_SaleItemCopyWith<_$_SaleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

SaleDetail _$SaleDetailFromJson(Map<String, dynamic> json) {
  return _SaleDetail.fromJson(json);
}

/// @nodoc
mixin _$SaleDetail {
  List<SaleItem> get items => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleDetailCopyWith<SaleDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleDetailCopyWith<$Res> {
  factory $SaleDetailCopyWith(
          SaleDetail value, $Res Function(SaleDetail) then) =
      _$SaleDetailCopyWithImpl<$Res, SaleDetail>;
  @useResult
  $Res call({List<SaleItem> items, double totalPrice});
}

/// @nodoc
class _$SaleDetailCopyWithImpl<$Res, $Val extends SaleDetail>
    implements $SaleDetailCopyWith<$Res> {
  _$SaleDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SaleItem>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaleDetailCopyWith<$Res>
    implements $SaleDetailCopyWith<$Res> {
  factory _$$_SaleDetailCopyWith(
          _$_SaleDetail value, $Res Function(_$_SaleDetail) then) =
      __$$_SaleDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SaleItem> items, double totalPrice});
}

/// @nodoc
class __$$_SaleDetailCopyWithImpl<$Res>
    extends _$SaleDetailCopyWithImpl<$Res, _$_SaleDetail>
    implements _$$_SaleDetailCopyWith<$Res> {
  __$$_SaleDetailCopyWithImpl(
      _$_SaleDetail _value, $Res Function(_$_SaleDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPrice = null,
  }) {
    return _then(_$_SaleDetail(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SaleItem>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_SaleDetail extends _SaleDetail {
  const _$_SaleDetail(
      {final List<SaleItem> items = const [], required this.totalPrice})
      : _items = items,
        super._();

  factory _$_SaleDetail.fromJson(Map<String, dynamic> json) =>
      _$$_SaleDetailFromJson(json);

  final List<SaleItem> _items;
  @override
  @JsonKey()
  List<SaleItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double totalPrice;

  @override
  String toString() {
    return 'SaleDetail(items: $items, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleDetail &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleDetailCopyWith<_$_SaleDetail> get copyWith =>
      __$$_SaleDetailCopyWithImpl<_$_SaleDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleDetailToJson(
      this,
    );
  }
}

abstract class _SaleDetail extends SaleDetail {
  const factory _SaleDetail(
      {final List<SaleItem> items,
      required final double totalPrice}) = _$_SaleDetail;
  const _SaleDetail._() : super._();

  factory _SaleDetail.fromJson(Map<String, dynamic> json) =
      _$_SaleDetail.fromJson;

  @override
  List<SaleItem> get items;
  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_SaleDetailCopyWith<_$_SaleDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
