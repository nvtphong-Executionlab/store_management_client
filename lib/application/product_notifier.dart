import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/product_model.dart';
import 'package:store_management_client/infrastructure/models/result_model.dart';
import 'package:store_management_client/infrastructure/repositories/product_repo.dart';

part 'product_notifier.g.dart';

const _emptyResponse = PaginationResponse<ProductModel>(currentPage: 0, totalItems: 0, totalPages: 1);

@riverpod
class ProductNotifier extends _$ProductNotifier {
  late final ProductRepository _productRepo;

  @override
  PaginationResponse<ProductModel> build() {
    _productRepo = ref.watch(productRepoProvider);
    getProducts();
    return _emptyResponse;
  }

  Future getProducts() async {
    final result = await _productRepo.getProducts(page: (state.value?.currentPage ?? 0) + 1);

    state = AsyncData(result.fold((l) => _emptyResponse, (r) {
      return r.copyWith(data: [...(state.value?.data ?? []), ...r.data]);
    }));
  }

  Future searchProduct({String keyword = ''}) async {
    final result = await _productRepo.searchProduct(keyword);
    state = AsyncData(result.fold((l) => _emptyResponse, (r) => r));
  }

  Future addProducts(List<ProductModel> products) async {
    final result = await _productRepo.addProducts(products);
    result.fold((l) => null, (r) {
      final currentData = state.value ?? _emptyResponse;
      state = AsyncData(
          currentData.copyWith(totalItems: currentData.totalItems + r.length, data: [...currentData.data, ...r]));
    });
  }
}
