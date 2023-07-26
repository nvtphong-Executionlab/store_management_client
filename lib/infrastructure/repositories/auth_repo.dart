import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store_management_client/infrastructure/models/failure_model.dart';
import 'package:store_management_client/service/http_service.dart';

import '../../service/request_param/auth_param.dart';
part 'auth_repo.g.dart';

class AuthRepository {
  final HttpService _httpService;
  AuthRepository(this._httpService);

  Future<Either<FailureModel, Unit>> login() async {
    final result = await _httpService.postData<Map<String, dynamic>>(LoginParam('phongdz', '123456'));
    final pref = await SharedPreferences.getInstance();
    return result.fold((l) => left(l), (r) {
      pref.setString('access_token', r['access_token']);
      return right(unit);
    });
  }
}

@riverpod
AuthRepository authRepo(AuthRepoRef ref) {
  return AuthRepository(ref.watch(httpServiceForAuthProvider));
}
