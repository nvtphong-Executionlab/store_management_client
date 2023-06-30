// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_repo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productRepositoryHash() => r'1143e6a957468f07814b030b8e53d8ea1ddb037b';

/// See also [productRepository].
@ProviderFor(productRepository)
final productRepositoryProvider =
    AutoDisposeProvider<ProductRepository>.internal(
  productRepository,
  name: r'productRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductRepositoryRef = AutoDisposeProviderRef<ProductRepository>;
String _$searchProductHash() => r'03bbc63ddecdd82c6c7d9b2a1c43ee660f50dd8c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef SearchProductRef = AutoDisposeFutureProviderRef<ProductModel?>;

/// See also [searchProduct].
@ProviderFor(searchProduct)
const searchProductProvider = SearchProductFamily();

/// See also [searchProduct].
class SearchProductFamily extends Family<AsyncValue<ProductModel?>> {
  /// See also [searchProduct].
  const SearchProductFamily();

  /// See also [searchProduct].
  SearchProductProvider call({
    required String keyword,
  }) {
    return SearchProductProvider(
      keyword: keyword,
    );
  }

  @override
  SearchProductProvider getProviderOverride(
    covariant SearchProductProvider provider,
  ) {
    return call(
      keyword: provider.keyword,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchProductProvider';
}

/// See also [searchProduct].
class SearchProductProvider extends AutoDisposeFutureProvider<ProductModel?> {
  /// See also [searchProduct].
  SearchProductProvider({
    required this.keyword,
  }) : super.internal(
          (ref) => searchProduct(
            ref,
            keyword: keyword,
          ),
          from: searchProductProvider,
          name: r'searchProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchProductHash,
          dependencies: SearchProductFamily._dependencies,
          allTransitiveDependencies:
              SearchProductFamily._allTransitiveDependencies,
        );

  final String keyword;

  @override
  bool operator ==(Object other) {
    return other is SearchProductProvider && other.keyword == keyword;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, keyword.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
