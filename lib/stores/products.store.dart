import 'dart:math';

import 'package:mercado_livre/models/product.model.dart';
import 'package:mobx/mobx.dart';

part 'products.store.g.dart';

class ProductsStore = ProductsStoreBase with _$ProductsStore;

abstract class ProductsStoreBase with Store {
  @observable
  ObservableList<Product> products = <Product>[].asObservable();

  @observable
  bool isLoading = false;

  @action
  Future<void> loadProducts() async {
    isLoading = true;

      products.clear();

    await Future.delayed(const Duration(seconds: 2));

    final productsTemp = List.generate(
      15,
      (index) => Product(
        id: index,
        name: "Apple iPhone 11 Pro (128GB) - Preto",
        price: 599.99 * (index + 1),
        rate: Random().nextInt(6).toDouble(),
      ),
    );

    products.addAll(productsTemp);

    isLoading = false;
  }
}
