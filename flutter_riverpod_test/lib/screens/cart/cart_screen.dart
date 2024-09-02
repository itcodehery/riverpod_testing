import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_test/providers/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(reducedProductsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: cartProducts.map((product) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: ListTile(
                title: Text(product.name),
                subtitle: Text("Price: \$${product.price}"),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
