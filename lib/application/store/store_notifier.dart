import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/store/store_model.dart';

import '../../infrastructure/models/response/result_model.dart';
import '../../infrastructure/repositories/store_repo.dart';
part 'store_notifier.g.dart';

const _emptyResponse = PaginationResponse<StoreModel>(
    currentPage: 1, totalItems: 0, totalPages: 1);

@riverpod
class StoreNotifier extends _$StoreNotifier {
  late final StoreRepository _storeRepository;
  @override
  PaginationResponse<StoreModel> build() {
    _storeRepository = ref.watch(storeRepoProvider);
    getStores();
    return _emptyResponse;
  }

  Future getStores() async {
    final result = await _storeRepository.getStores();
    state = result.fold((l) => _emptyResponse, (r) => r);
  }
}
