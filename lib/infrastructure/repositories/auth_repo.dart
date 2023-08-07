import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store_management_client/infrastructure/models/response/failure_model.dart';
import 'package:store_management_client/infrastructure/models/user/user_model.dart';
import 'package:store_management_client/service/http_service.dart';

import '../../service/request_param/auth_param.dart';
part 'auth_repo.g.dart';

class AuthRepository {
  final HttpService _httpService;
  AuthRepository(this._httpService);

  Future<Either<FailureModel, Unit>> login(String username, String password) async {
    final result = await _httpService.postData<Map<String, dynamic>>(LoginParam(username, password));
    final pref = await SharedPreferences.getInstance();
    return result.fold((l) => left(l), (r) {
      pref.setString('access_token', r['access_token']);
      return right(unit);
    });
  }

  Future<Either<FailureModel, Unit>> signUp(String username, String password) async {
    return _httpService.postData(SignUpParam(username, password));
  }

  Future<Either<FailureModel, UserModel>> getUserInfo() async {
    return _httpService.getData(UserInfoParam());
  }
}

@riverpod
AuthRepository authRepo(AuthRepoRef ref) {
  return AuthRepository(ref.watch(httpServiceForAuthProvider));
}
