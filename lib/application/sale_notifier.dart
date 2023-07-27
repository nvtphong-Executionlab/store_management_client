import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/result_model.dart';
import 'package:store_management_client/infrastructure/models/sale_model.dart';
import 'package:store_management_client/infrastructure/repositories/sale_repo.dart';

import '../infrastructure/models/product_model.dart';
part 'sale_notifier.g.dart';

const _empty = PaginationResponse<SaleModel>(currentPage: 1, totalItems: 0, totalPages: 1, data: []);

@riverpod
class SaleNotifier extends _$SaleNotifier {
  late final SaleRepository _saleRepo;
  @override
  FutureOr<PaginationResponse<SaleModel>> build() async {
    _saleRepo = ref.watch(saleRepoProvider);
    // final sales = await _saleRepo.getSales();
    return _empty;
  }

  Future sellProducts(List<ProductModel> products) async {
    final res = await _saleRepo.sellProducts(products);
    final currentData = state.value ?? _empty;
    state = AsyncData(currentData.copyWith(totalItems: currentData.data.length + 1, data: [
      ...currentData.data,
      ...res.fold((l) => [], (r) => [r])
    ]));
  }
}
