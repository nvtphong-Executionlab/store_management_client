import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/response/failure_model.dart';
import 'package:store_management_client/infrastructure/models/response/result_model.dart';
import 'package:store_management_client/infrastructure/models/store/store_model.dart';
import 'package:store_management_client/service/http_service.dart';
import 'package:store_management_client/service/request_param/store_param.dart';
part 'store_repo.g.dart';

class StoreRepository {
  final HttpService _httpService;
  StoreRepository(this._httpService);

  Future<Either<FailureModel, Unit>> createStore(
      {required String storeName, required String address}) async {
    return _httpService
        .postData(CreateStoreParam(storeName: storeName, address: address));
  }

  Future<Either<FailureModel, StoreModel>> getStoreInfo() async {
    return _httpService.getData(GetStoreInfoParam());
  }

  Future<Either<FailureModel, PaginationResponse<StoreModel>>> getStores(
      {int page = 1, int limit = 10}) async {
    return _httpService.getData(GetStoresParam(page, limit));
  }
}

@riverpod
StoreRepository storeRepo(StoreRepoRef ref) {
  final httpService = ref.watch(httpServiceProvider);
  return StoreRepository(httpService);
}
