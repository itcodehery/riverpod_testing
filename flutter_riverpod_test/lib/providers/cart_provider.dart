import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_test/models/product_model.dart';

//its not a provider itself, tis just a notifier class
class CartNotifier extends Notifier<Set<ProductModel>> {
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
final cartNotifierProvider =
    NotifierProvider<CartNotifier, Set<ProductModel>>(() {
  return CartNotifier();
});
