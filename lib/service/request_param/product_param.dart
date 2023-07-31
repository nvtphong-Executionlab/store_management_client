// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:store_management_client/infrastructure/models/product/product_model.dart';

import 'request_param.dart';

class SearchProductParam extends IParam {
  final String keyword;
  SearchProductParam(this.keyword);

  @override
  Map<String, dynamic> get json => {'keyword': keyword};

  @override
  String get link => 'products/search';
}

class CUDProductParam extends IParam {
  List<ProductModel> products;
  CUDProductParam({required this.products});

  @override
  get json => products.map((e) => e.toJson()).toList();

  @override
  String get link => 'products';
}

class ListProductParam extends IParam {
  final int page;
  final int limit;
  ListProductParam({this.page = 1, this.limit = 20});

  @override
  Map<String, dynamic> get json => {};

  @override
  String get link => 'products?page=$page&limit=$limit';
}
