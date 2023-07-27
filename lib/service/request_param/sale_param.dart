import 'package:store_management_client/infrastructure/models/product_model.dart';
import 'package:store_management_client/service/request_param/request_param.dart';

class GetSaleParam extends IParam {
  @override
  get json => {};

  @override
  String get link => 'sales';
}

class SellProductParam extends IParam {
  final List<ProductModel> products;
  SellProductParam(this.products);

  @override
  get json => products.map((e) => e.toJson()).toList();

  @override
  String get link => 'sales';
}
