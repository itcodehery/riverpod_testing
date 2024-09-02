// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsHash() => r'474d141e1eecc9ffc4d80407451ef31e68eaa940';

/// See also [products].
@ProviderFor(products)
final productsProvider = AutoDisposeProvider<List<ProductModel>>.internal(
  products,
  name: r'productsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$productsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductsRef = AutoDisposeProviderRef<List<ProductModel>>;
String _$reducedProductsHash() => r'1757486daf0b7f5d00322eb62d5dab6ba691b6fb';

/// See also [reducedProducts].
@ProviderFor(reducedProducts)
final reducedProductsProvider =
    AutoDisposeProvider<List<ProductModel>>.internal(
  reducedProducts,
  name: r'reducedProductsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$reducedProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReducedProductsRef = AutoDisposeProviderRef<List<ProductModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
