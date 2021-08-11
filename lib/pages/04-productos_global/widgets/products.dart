import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/04-productos_global/product_global_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Products ListView");
    return GetBuilder<ProductGlobalController>(
      id: "products",
      builder: (_) {
        return ListView.builder(
          itemCount: _.products.length,
          itemBuilder: (context, index) {
            final product = _.products[index];
            return ListTile(
              title: Text(product.name ?? ""),
              subtitle: Text("USD ${product.price}"),
              trailing: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: product.isFavorite ? Colors.pinkAccent : Colors.grey,
                ),
                onPressed: () {
                  _.onFavorite(index, !product.isFavorite);
                },
              ),
            );
          },
        );
      },
    );
  }
}
