import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod_test/models/product_model.dart';

part 'cart_provider.g.dart';

//its not a provider itself, tis just a notifier class
@riverpod
class CartNotifier extends _$CartNotifier {
  //initial value
  @override
  Set<ProductModel> build() {
    return {};
  }

  int get totalItems => state.length;

  //methods to update state
  void addProduct(ProductModel product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(ProductModel product) {
    if (state.contains(product)) {
      state = state.where((element) => element != product).toSet();
    }
  }
}

//read only provider for cart notifier, I think
// final cartNotifierProvider =
//     NotifierProvider<CartNotifier, Set<ProductModel>>(() {
//   return CartNotifier();
// });
