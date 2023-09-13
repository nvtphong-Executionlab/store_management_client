import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store_management_client/application/auth/auth_notifier.dart';
part 'authen_interceptor.g.dart';

const _kAccessTokenInterval = Duration(days: 1);

class AuthenticationInterceptor extends QueuedInterceptor {
  final AuthNotifier _authNotifier;
  AuthenticationInterceptor(this._authNotifier);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (await _authNotifier.isExpiredToken()) {
      _authNotifier.logout();
      handler.reject(DioException(requestOptions: options), true);
      return;
    }
    await _assignHeaders(options);
    super.onRequest(options, handler);
  }

  Future<void> _assignHeaders(RequestOptions options) async {
    final pref = await SharedPreferences.getInstance();
    final accessToken = pref.getString('access_token');
    options.headers['Authorization'] = '$accessToken';
    options.headers['Content-Type'] = 'application/json';
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    log(err.response?.data['message'] ?? '');
    if (err.response?.data['message'] ==
        'You have not created or joined a store') {
      log('No store');
      _authNotifier.noStore();
    }
    super.onError(err, handler);
  }
}

@riverpod
AuthenticationInterceptor authInterceptor(AuthInterceptorRef ref) {
  return AuthenticationInterceptor(ref.read(authNotifierProvider.notifier));
}
