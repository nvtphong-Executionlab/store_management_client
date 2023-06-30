import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/product_model.dart';
import 'package:store_management_client/infrastructure/repositories/product_repo.dart';
part 'product_notifier.g.dart';

@riverpod
class ProductNotifier extends _$ProductNotifier {
  late final ProductRepository _productRepo;

  @override
  FutureOr<List<ProductModel>> build() async {
    _productRepo = ref.watch(productRepositoryProvider);
    final result = await _productRepo.getProducts();
    return result.fold((l) => [], (r) => r);
  }

  Future getProducts() async {
    final result = await _productRepo.getProducts();
    state = AsyncData(result.fold((l) => [], (r) => r));

    // final repo = ref
  }
}
