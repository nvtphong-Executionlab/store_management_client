import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store_management_client/infrastructure/models/failure_model.dart';
import 'package:store_management_client/infrastructure/models/product_model.dart';
import 'package:store_management_client/infrastructure/models/result_model.dart';

Future<Either<FailureModel, T>> requestWrapper<T>(Future<Response> call) async {
  try {
    final response = await call;
    final jsonData = response.data;
    // log('$jsonData');
    return right(_mapJsonToData<T>(jsonData));
  } on DioException catch (err) {
    log('error ${err.response?.data}');
    return left(FailureModel(code: err.response?.statusCode.toString(), message: err.response?.data.toString()));
  }
}

T _mapJsonToData<T>(Map<String, dynamic> json) {
  dynamic result;
  switch (T) {
    case ProductModel:
      result = ProductModel.fromJson(json);
      break;
    case const (PaginationResponse<ProductModel>):
      result = PaginationResponse.fromJson(json, ProductModel.fromObjectJson);
    default:
      result = json;
      break;
  }
  return result as T;
}
