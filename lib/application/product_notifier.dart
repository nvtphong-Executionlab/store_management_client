import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/product_model.dart';
import 'package:store_management_client/infrastructure/models/result_model.dart';
import 'package:store_management_client/infrastructure/repositories/product_repo.dart';
part 'product_notifier.g.dart';

const _emptyResponse = PaginationResponse<ProductModel>(currentPage: 0, totalItems: 0, totalPages: 0);

@riverpod
class ProductNotifier extends _$ProductNotifier {
  late final ProductRepository _productRepo;

  @override
  FutureOr<PaginationResponse<ProductModel>> build() async {
    _productRepo = ref.watch(productRepoProvider);
    final result = await _productRepo.getProducts();
    return result.fold((l) => _emptyResponse, (r) => r);
  }

  Future getProducts() async {
    final result = await _productRepo.getProducts();
    state = AsyncData(result.fold((l) => _emptyResponse, (r) => r));
  }
}
