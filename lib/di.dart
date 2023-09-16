// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
// import 'package:store_management_client/infrastructure/repositories/auth_repo.dart';
// import 'package:store_management_client/service/http_service.dart';

// final getIt = GetIt.instance;

// void setup() {
//   getIt.registerSingleton(Dio(BaseOptions(
//     baseUrl: Platform.isAndroid
//         ? 'http://192.168.0.109:8080/api/v1/'
//         : 'http://127.0.0.1:8080/api/v1/',
//     connectTimeout: const Duration(milliseconds: 30000),
//     receiveTimeout: const Duration(milliseconds: 30000),
//     followRedirects: false,
//   )));
//   getIt.registerSingleton(HttpService(getIt.get()));
//   getIt.registerSingleton<AuthRepository>(AuthRepository(getIt.get()));

// // Alternatively you could write it if you don't like global variables
// }
