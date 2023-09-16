abstract class _IParam {
  // dynamic get json;
  String get link;
  Map<String, dynamic>? get queryParam => null;
}

abstract class GetParam extends _IParam {}

abstract class CUDParam extends _IParam {
  dynamic get json;
}
