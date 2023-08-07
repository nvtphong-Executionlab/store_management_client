import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store_management_client/infrastructure/models/response/failure_model.dart';
import 'package:store_management_client/infrastructure/models/product/product_model.dart';
import 'package:store_management_client/infrastructure/models/response/result_model.dart';
import 'package:store_management_client/infrastructure/models/sale/sale_item_model.dart';
import 'package:store_management_client/infrastructure/models/sale/sale_model.dart';
import 'package:store_management_client/infrastructure/models/store/store_model.dart';

Future<Either<FailureModel, T>> requestWrapper<T>(Future<Response> call) async {
  try {
    final response = await call;
    final jsonData = response.data;
    // log('$jsonData');
    return right(_mapJsonToData<T>(jsonData));
  } on DioException catch (err) {
    log('error ${err.response?.data}');
    return left(FailureModel(code: err.response?.statusCode.toString(), message: err.response?.data.toString()));
  } on Exception catch (err) {
    return left(FailureModel(code: '408', message: err.toString()));
  }
}

T _mapJsonToData<T>(dynamic json) {
  dynamic result;
  switch (T) {
    case ProductModel:
      result = ProductModel.fromJson(json);
      break;
    case const (PaginationResponse<ProductModel>):
      result = PaginationResponse.fromJson(json, ProductModel.fromObjectJson);
      break;
    case const (List<ProductModel>):
      result = (json as List).map((e) => ProductModel.fromJson(e)).toList();
      break;
    case const (PaginationResponse<SaleModel>):
      result = PaginationResponse.fromJson(json, SaleModel.fromObjectJson);
      break;
    case SaleModel:
      result = SaleModel.fromJson(json);
      break;

    case Unit:
      result = unit;
      break;

    case SaleDetail:
      result = SaleDetail.fromJson(json);
      break;

    case StoreModel:
      result = StoreModel.fromJson(json);
      break;

    default:
      result = json as T;
      break;
  }
  return result as T;
}
