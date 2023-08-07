import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/response/failure_model.dart';
import 'package:store_management_client/infrastructure/models/product/product_model.dart';
import 'package:store_management_client/infrastructure/models/response/result_model.dart';
import 'package:store_management_client/service/http_service.dart';

import '../../service/request_param/product_param.dart';
part 'product_repo.g.dart';

class ProductRepository {
  final HttpService _httpService;
  ProductRepository(this._httpService);

  Future<Either<FailureModel, PaginationResponse<ProductModel>>> getProducts({int page = 1}) async {
    return _httpService.getData<PaginationResponse<ProductModel>>(ListProductParam(page: page));
  }

  Future<Either<FailureModel, PaginationResponse<ProductModel>>> searchProduct(String keyword,
      {int page = 1, int limit = 10}) {
    return _httpService
        .getData<PaginationResponse<ProductModel>>(SearchProductParam(keyword, page: page, limit: limit));
  }

  Future<Either<FailureModel, ProductModel?>> searchSingleProduct(String keyword) async {
    final result = await _httpService.getData<PaginationResponse<ProductModel>>(SearchProductParam(keyword));
    return result.fold((l) => left(l), (r) => right(r.data.isEmpty ? null : r.data.first));
  }

  Future<Either<FailureModel, List<ProductModel>>> addProducts(List<ProductModel> products) async {
    return _httpService.postData<List<ProductModel>>(CUDProductParam(products: products));
  }

  Future<Either<FailureModel, Unit>> removeProducts(List<ProductModel> products) async {
    return _httpService.deleteData(CUDProductParam(products: products));
  }

  Future<Either<FailureModel, Unit>> updateProducts(List<ProductModel> products) async {
    return _httpService.putData(CUDProductParam(products: products));
  }
}

@riverpod
FutureOr<ProductModel?> searchProduct(SearchProductRef ref, {required String keyword}) async {
  final productRepo = ref.watch(productRepoProvider);
  final result = await productRepo.searchSingleProduct(keyword);
  return result.fold((l) => null, (r) => r);
}

@riverpod
ProductRepository productRepo(ProductRepoRef ref) {
  final httpService = ref.watch(httpServiceProvider);
  return ProductRepository(httpService);
}
