// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'request_param.dart';

class SearchProductParam extends IParam {
  final String keyword;
  SearchProductParam(this.keyword);

  @override
  Map<String, dynamic> get json => {'keyword': keyword};

  @override
  String get link => 'products/search';
}

class AddProductParam extends IParam {
  final int id, stock;
  final double priceIn, priceOut;
  final String name;
  AddProductParam({
    required this.id,
    required this.stock,
    required this.priceIn,
    required this.priceOut,
    required this.name,
  });

  @override
  Map<String, dynamic> get json =>
      {'ID': id, 'ProductName': name, 'PriceIn': priceIn, 'PriceOut': priceOut, 'Stock': stock};

  @override
  String get link => 'products';
}

class ListProductParam extends IParam {
  final int page;
  ListProductParam({this.page = 1});

  @override
  Map<String, dynamic> get json => {};

  @override
  String get link => 'products?page=$page';
}
