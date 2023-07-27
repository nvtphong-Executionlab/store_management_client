import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/failure_model.dart';
import 'package:store_management_client/infrastructure/models/product_model.dart';
import 'package:store_management_client/infrastructure/models/result_model.dart';
import 'package:store_management_client/service/http_service.dart';

import '../../service/request_param/product_param.dart';
part 'product_repo.g.dart';

class ProductRepository {
  final HttpService _httpService;
  ProductRepository(this._httpService);

  Future<Either<FailureModel, PaginationResponse<ProductModel>>> getProducts({int page = 1}) async {
    return _httpService.getData<PaginationResponse<ProductModel>>(ListProductParam(page: page));
  }

  Future<Either<FailureModel, PaginationResponse<ProductModel>>> searchProduct(String keyword) {
    return _httpService.getData<PaginationResponse<ProductModel>>(SearchProductParam(keyword));
  }

  Future<Either<FailureModel, ProductModel?>> searchSingleProduct(String keyword) async {
    final result = await _httpService.getData<PaginationResponse<ProductModel>>(SearchProductParam(keyword));
    return result.fold((l) => left(l), (r) => right(r.data.isEmpty ? null : r.data.first));
    // final r = Random();
    // await Future.delayed(const Duration(milliseconds: 500));
    // final id = String.fromCharCodes(List.generate(10, (index) => r.nextInt(33) + 89));
    // final name = String.fromCharCodes(List.generate(20, (index) => r.nextInt(33) + 89));

    // return right(ProductModel(productID: id, productName: name, priceOut: 100000, priceIn: 900000));
  }

  Future<Either<FailureModel, List<ProductModel>>> addProducts(List<ProductModel> products) async {
    return _httpService.postData<List<ProductModel>>(AddProductParam(products: products));
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
