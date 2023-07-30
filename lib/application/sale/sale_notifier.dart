import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/response/result_model.dart';
import 'package:store_management_client/infrastructure/models/sale/sale_model.dart';
import 'package:store_management_client/infrastructure/repositories/sale_repo.dart';

import '../../infrastructure/models/product/product_model.dart';
part 'sale_notifier.g.dart';

const _empty = PaginationResponse<SaleModel>(
    currentPage: 0, totalItems: 0, totalPages: 1, data: []);

@riverpod
class SaleNotifier extends _$SaleNotifier {
  late final SaleRepository _saleRepo;
  @override
  FutureOr<PaginationResponse<SaleModel>> build() {
    _saleRepo = ref.watch(saleRepoProvider);
    getSales();
    // final sales = await _saleRepo.getSales();
    return _empty;
  }

  Future sellProducts(List<ProductModel> products) async {
    final res = await _saleRepo.sellProducts(products);
    final currentData = state.value ?? _empty;
    state = AsyncData(
        currentData.copyWith(totalItems: currentData.data.length + 1, data: [
      ...currentData.data,
      ...res.fold((l) => [], (r) => [r])
    ]));
  }

  Future getSales() async {
    final result =
        await _saleRepo.getSales(page: (state.value?.currentPage ?? 0) + 1);
    state = AsyncData(result.fold((l) => _empty, (r) {
      return r.copyWith(data: [...(state.value?.data ?? []), ...r.data]);
    }));
  }
}
