import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'authen_interceptor.g.dart';

class AuthenticationInterceptor extends QueuedInterceptor {
  AuthenticationInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    await _assignHeaders(options);
    super.onRequest(options, handler);
  }

  Future<void> _assignHeaders(RequestOptions options) async {
    final pref = await SharedPreferences.getInstance();
    final accessToken = pref.getString('access_token');
    options.headers['Authorization'] = '$accessToken';
    options.headers['Content-Type'] = 'application/json';
  }
}

@riverpod
AuthenticationInterceptor authInterceptor(AuthInterceptorRef ref) {
  return AuthenticationInterceptor();
}
