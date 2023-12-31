import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/response/failure_model.dart';
import 'package:store_management_client/service/authen_interceptor.dart';
import 'package:store_management_client/service/request_param/request_param.dart';
import 'package:store_management_client/service/request_wrapper.dart';
import 'dart:io' show Platform;
part 'http_service.g.dart';

class HttpService {
  final Dio _dio;
  HttpService(this._dio);

  Future<Either<FailureModel, T>> getData<T>(GetParam param) async {
    return requestWrapper<T>(_dio.get(
      param.link,
      queryParameters: param.queryParam,
    ));
  }

  Future<Either<FailureModel, T>> postData<T>(CUDParam param) async {
    return requestWrapper<T>(_dio.post(param.link, data: param.json));
  }

  Future<Either<FailureModel, T>> putData<T>(CUDParam param) async {
    return requestWrapper<T>(_dio.put(param.link, data: param.json));
  }

  Future<Either<FailureModel, T>> deleteData<T>(CUDParam param) async {
    return requestWrapper(_dio.delete(param.link, data: param.json));
  }
}

@riverpod
Dio dio(DioRef ref) {
  return Dio(BaseOptions(
    baseUrl: 'http://192.168.0.109:8080/api/v1/',
    connectTimeout: const Duration(milliseconds: 30000),
    receiveTimeout: const Duration(milliseconds: 30000),
    followRedirects: false,
  ));
}

@riverpod
HttpService httpServiceForAuth(HttpServiceForAuthRef ref) {
  return HttpService(ref.watch(dioProvider));
}

@riverpod
HttpService httpService(HttpServiceRef ref) {
  final dio = ref.watch(dioProvider);
  dio.interceptors.add(ref.watch(authInterceptorProvider));
  return HttpService(dio);
}
