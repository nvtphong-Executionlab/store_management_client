import 'package:store_management_client/service/request_param/request_param.dart';

class LoginParam extends CUDParam {
  final String username;
  final String password;
  LoginParam(this.username, this.password);

  @override
  // TODO: implement json
  Map<String, dynamic> get json => {
        'username': username,
        'password': password,
      };

  @override
  String get link => 'login';
}

class SignUpParam extends LoginParam {
  SignUpParam(super.username, super.password);

  @override
  Map<String, dynamic> get json => {
        'username': username,
        'password': password,
      };

  @override
  String get link => 'signup';
}

class UserInfoParam extends GetParam {
  @override
  String get link => 'user';
}
