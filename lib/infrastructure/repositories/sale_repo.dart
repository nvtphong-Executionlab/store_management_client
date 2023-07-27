import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/failure_model.dart';
import 'package:store_management_client/infrastructure/models/result_model.dart';
import 'package:store_management_client/infrastructure/models/sale_model.dart';
import 'package:store_management_client/service/request_param/sale_param.dart';

import '../../service/http_service.dart';
import '../models/product_model.dart';
part 'sale_repo.g.dart';

class SaleRepository {
  final HttpService _httpService;
  SaleRepository(this._httpService);

  Future<Either<FailureModel, SaleModel>> sellProducts(List<ProductModel> products) async {
    return _httpService.postData(SellProductParam(products));
  }

  Future<Either<FailureModel, PaginationResponse<SaleModel>>> getSales({int page = 1, int limit = 10}) async {
    return _httpService.getData(GetSaleParam());
  }
}

@riverpod
SaleRepository saleRepo(SaleRepoRef ref) {
  return SaleRepository(ref.watch(httpServiceProvider));
}
