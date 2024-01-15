import 'package:flutter/material.dart';

import 'address_search.widget.dart';
import 'search_products.widget.dart';
import 'shopping_cart_icon.widget.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const Key("inputSearch");
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SearchProducts(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ShoppingCartIcon(),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        AddressSearch()
      ],
    );
  }
}
