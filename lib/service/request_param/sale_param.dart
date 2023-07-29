import 'package:store_management_client/infrastructure/models/product_model.dart';
import 'package:store_management_client/service/request_param/request_param.dart';

class GetSaleParam extends IParam {
  final int page;
  final int limit;
  GetSaleParam(this.page, this.limit);

  @override
  get json => {};

  @override
  String get link => 'sales?page=$page&limit=$limit';
}

class SellProductParam extends IParam {
  final List<ProductModel> products;
  SellProductParam(this.products);

  @override
  get json => products.map((e) => e.toJson()).toList();

  @override
  String get link => 'sales';
}

class SellDetailParam extends IParam {
  final int saleID;
  SellDetailParam(this.saleID);

  @override
  get json => {};

  @override
  String get link => 'sales/$saleID';
}
