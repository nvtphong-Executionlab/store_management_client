// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:store_management_client/infrastructure/models/product/product_model.dart';

import 'request_param.dart';

class SearchProductParam extends GetParam {
  final String keyword;
  final int page;
  final int limit;
  SearchProductParam(this.keyword, {this.page = 1, this.limit = 10});

  @override
  String get link => 'products/search?keyword=$keyword&page=$page&limit=$limit';
}

class CUDProductParam extends CUDParam {
  List<ProductModel> products;
  CUDProductParam({required this.products});

  @override
  get json => products.map((e) => e.toJson()).toList();

  @override
  String get link => 'products';
}

class ListProductParam extends GetParam {
  final int page;
  final int limit;
  ListProductParam({this.page = 1, this.limit = 20});

  @override
  String get link => 'products?page=$page&limit=$limit';
}
