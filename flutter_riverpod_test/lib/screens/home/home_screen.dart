import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_test/components/cart_icon.dart';
import 'package:flutter_riverpod_test/providers/products_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(productsProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Garage Sale Products"),
          actions: const [
            CartIcon(),
            SizedBox(width: 10),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.9),
              itemCount: allProducts.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.blueGrey.withOpacity(0.5),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      // Image.asset(allProducts[index].imagePath, width: 60, height: 60),
                      // const SizedBox(height: 10),
                      Text(allProducts[index].name),
                      const SizedBox(height: 10),
                      Text("Price: \$${allProducts[index].price}"),
                    ],
                  ),
                );
              }),
        ));
  }
}
