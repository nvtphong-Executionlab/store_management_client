import 'package:store_management_client/service/request_param/request_param.dart';

class CreateStoreParam extends IParam {
  final String storeName;
  final String address;

  CreateStoreParam({required this.storeName, required this.address});

  @override
  Map<String, dynamic> get json => {
        'StoreName': storeName,
        'Address': address,
      };

  @override
  String get link => 'store';
}

class GetStoreInfoParam extends IParam {
  @override
  Map<String, dynamic> get json => {};

  @override
  String get link => 'store';
}

class GetStoresParam extends IParam {
  final int page;
  final int limit;

  GetStoresParam(this.page, this.limit);

  @override
  Map<String, dynamic> get json => {};

  @override
  String get link => 'store/list?page=$page&limit=$limit';
}
