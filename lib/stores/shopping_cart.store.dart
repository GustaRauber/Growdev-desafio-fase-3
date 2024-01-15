
import 'package:mercado_livre/models/product.model.dart';
import 'package:mobx/mobx.dart';

part 'shopping_cart.store.g.dart';

class ShoppingCartStore = ShoppingCartStoreBase with _$ShoppingCartStore;

abstract class ShoppingCartStoreBase with Store {
  @observable
  ObservableList<Product> productsInCart = <Product> [].asObservable();


  @action  
  bool addProductInCart (Product product) {

    if (productsInCart.any((p) => p.id == product.id)){
      return false;

    }

    productsInCart.add(product);
    return true;
  }
  
}
