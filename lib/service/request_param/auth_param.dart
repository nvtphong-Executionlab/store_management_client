import 'package:store_management_client/service/request_param/request_param.dart';

class LoginParam extends IParam {
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