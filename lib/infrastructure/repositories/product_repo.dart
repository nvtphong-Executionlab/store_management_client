import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/failure_model.dart';
import 'package:store_management_client/infrastructure/models/product_model.dart';
part 'product_repo.g.dart';

class ProductRepository {
  Future<Either<FailureModel, List<ProductModel>>> getProducts() async {
    await Future.delayed(const Duration(milliseconds: 500));
    final r = Random();

    return right(List.generate(10, (index) {
      final id = String.fromCharCodes(List.generate(10, (index) => r.nextInt(33) + 89));
      final name = String.fromCharCodes(List.generate(20, (index) => r.nextInt(33) + 89));

      return ProductModel(
          productID: id,
          productName: name,
          priceOut: r.nextInt(33) * 1000,
          priceIn: r.nextInt(33) * 1000,
          stock: r.nextInt(33));
    }));
  }

  Future<Either<FailureModel, ProductModel>> searchProduct(String keyword) async {
    final r = Random();
    await Future.delayed(const Duration(milliseconds: 500));
    final id = String.fromCharCodes(List.generate(10, (index) => r.nextInt(33) + 89));
    final name = String.fromCharCodes(List.generate(20, (index) => r.nextInt(33) + 89));

    return right(ProductModel(productID: id, productName: name, priceOut: 100000, priceIn: 900000));
  }
}

@riverpod
ProductRepository productRepository(ProductRepositoryRef ref) {
  return ProductRepository();
}

@riverpod
FutureOr<ProductModel?> searchProduct(SearchProductRef ref, {required String keyword}) async {
  if (keyword.isEmpty || keyword != '1') {
    return null;
  }

  final productRepo = ref.watch(productRepositoryProvider);
  final result = await productRepo.searchProduct(keyword);
  return result.fold((l) => null, (r) => r);
}
