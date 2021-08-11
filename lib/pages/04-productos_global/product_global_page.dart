import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/04-productos_global/product_global_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'widgets/products.dart';

class ProductGlobalPage extends StatelessWidget {
  const ProductGlobalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build Product");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Products"),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<ProductGlobalController>(
                id: "favorites",
                builder: (_) {
                  return Text(
                    "Bag: ${_.favorites.length}",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              SizedBox(width: 5.0),
              Icon(
                Icons.shopping_bag_outlined,
              ),
            ],
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Products(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Click");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
