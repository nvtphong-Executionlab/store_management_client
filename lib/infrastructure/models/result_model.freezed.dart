// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationResponse<T> _$PaginationResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginationResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginationResponse<T> {
  int get currentPage => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationResponseCopyWith<T, PaginationResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationResponseCopyWith<T, $Res> {
  factory $PaginationResponseCopyWith(PaginationResponse<T> value,
          $Res Function(PaginationResponse<T>) then) =
      _$PaginationResponseCopyWithImpl<T, $Res, PaginationResponse<T>>;
  @useResult
  $Res call({int currentPage, List<T> data, int totalItems, int totalPages});
}

/// @nodoc
class _$PaginationResponseCopyWithImpl<T, $Res,
        $Val extends PaginationResponse<T>>
    implements $PaginationResponseCopyWith<T, $Res> {
  _$PaginationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? totalItems = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationResponseCopyWith<T, $Res>
    implements $PaginationResponseCopyWith<T, $Res> {
  factory _$$_PaginationResponseCopyWith(_$_PaginationResponse<T> value,
          $Res Function(_$_PaginationResponse<T>) then) =
      __$$_PaginationResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int currentPage, List<T> data, int totalItems, int totalPages});
}

/// @nodoc
class __$$_PaginationResponseCopyWithImpl<T, $Res>
    extends _$PaginationResponseCopyWithImpl<T, $Res, _$_PaginationResponse<T>>
    implements _$$_PaginationResponseCopyWith<T, $Res> {
  __$$_PaginationResponseCopyWithImpl(_$_PaginationResponse<T> _value,
      $Res Function(_$_PaginationResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? totalItems = null,
    Object? totalPages = null,
  }) {
    return _then(_$_PaginationResponse<T>(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_PaginationResponse<T> extends _PaginationResponse<T> {
  const _$_PaginationResponse(
      {required this.currentPage,
      final List<T> data = const [],
      required this.totalItems,
      required this.totalPages})
      : _data = data,
        super._();

  factory _$_PaginationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PaginationResponseFromJson(json, fromJsonT);

  @override
  final int currentPage;
  final List<T> _data;
  @override
  @JsonKey()
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int totalItems;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'PaginationResponse<$T>(currentPage: $currentPage, data: $data, totalItems: $totalItems, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationResponse<T> &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage,
      const DeepCollectionEquality().hash(_data), totalItems, totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationResponseCopyWith<T, _$_PaginationResponse<T>> get copyWith =>
      __$$_PaginationResponseCopyWithImpl<T, _$_PaginationResponse<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_PaginationResponseToJson<T>(this, toJsonT);
  }
}

abstract class _PaginationResponse<T> extends PaginationResponse<T> {
  const factory _PaginationResponse(
      {required final int currentPage,
      final List<T> data,
      required final int totalItems,
      required final int totalPages}) = _$_PaginationResponse<T>;
  const _PaginationResponse._() : super._();

  factory _PaginationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PaginationResponse<T>.fromJson;

  @override
  int get currentPage;
  @override
  List<T> get data;
  @override
  int get totalItems;
  @override
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationResponseCopyWith<T, _$_PaginationResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
