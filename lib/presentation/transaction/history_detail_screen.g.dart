// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_detail_screen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$saleDetailHash() => r'73a84211c296f595266fbb404c706ca87ffef7b6';

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

typedef SaleDetailRef = AutoDisposeFutureProviderRef<SaleDetail>;

/// See also [saleDetail].
@ProviderFor(saleDetail)
const saleDetailProvider = SaleDetailFamily();

/// See also [saleDetail].
class SaleDetailFamily extends Family<AsyncValue<SaleDetail>> {
  /// See also [saleDetail].
  const SaleDetailFamily();

  /// See also [saleDetail].
  SaleDetailProvider call(
    int saleID,
  ) {
    return SaleDetailProvider(
      saleID,
    );
  }

  @override
  SaleDetailProvider getProviderOverride(
    covariant SaleDetailProvider provider,
  ) {
    return call(
      provider.saleID,
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
  String? get name => r'saleDetailProvider';
}

/// See also [saleDetail].
class SaleDetailProvider extends AutoDisposeFutureProvider<SaleDetail> {
  /// See also [saleDetail].
  SaleDetailProvider(
    this.saleID,
  ) : super.internal(
          (ref) => saleDetail(
            ref,
            saleID,
          ),
          from: saleDetailProvider,
          name: r'saleDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saleDetailHash,
          dependencies: SaleDetailFamily._dependencies,
          allTransitiveDependencies:
              SaleDetailFamily._allTransitiveDependencies,
        );

  final int saleID;

  @override
  bool operator ==(Object other) {
    return other is SaleDetailProvider && other.saleID == saleID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, saleID.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
