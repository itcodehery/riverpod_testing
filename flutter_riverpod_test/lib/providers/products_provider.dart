import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_test/models/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_provider.g.dart';

List<ProductModel> allProducts = [
  ProductModel(
      id: "1",
      name: "Product 1",
      price: 100,
      imagePath: "assets/images/product1.jpg"),
  ProductModel(
      id: "2",
      name: "Product 2",
      price: 200,
      imagePath: "assets/images/product2.jpg"),
  ProductModel(
      id: "3",
      name: "Product 3",
      price: 300,
      imagePath: "assets/images/product3.jpg"),
  ProductModel(
      id: "4",
      name: "Product 4",
      price: 400,
      imagePath: "assets/images/product4.jpg"),
  ProductModel(
      id: "5",
      name: "Product 5",
      price: 500,
      imagePath: "assets/images/product5.jpg"),
  ProductModel(
      id: "6",
      name: "Product 6",
      price: 600,
      imagePath: "assets/images/product6.jpg"),
  ProductModel(
      id: "7",
      name: "Product 7",
      price: 700,
      imagePath: "assets/images/product7.jpg"),
  ProductModel(
      id: "8",
      name: "Product 8",
      price: 800,
      imagePath: "assets/images/product8.jpg"),
];

// read only providers
// final productsProvider = Provider((ref) {
//   return allProducts;
// });

// final reducedProductsProvider = Provider((ref) {
//   return allProducts.where((element) => element.price < 400).toList();
// });

// generated providers
@riverpod
List<ProductModel> products(ref) {
  return allProducts;
}

@riverpod
List<ProductModel> reducedProducts(ref) {
  return allProducts.where((element) => element.price < 400).toList();
}
