import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/07-reactivos_observables/reactivo_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ListasReactivas extends StatelessWidget {
  const ListasReactivas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactivoController>(
      builder: (_) {
        return Obx(() {
          print("Dibujando Lista");
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_.items[index]),
                trailing: GestureDetector(
                  onTap: () {
                    _.deleteItem(index);
                  },
                  child: Icon(Icons.delete_outline),
                ),
              );
            },
          );
        });
      },
    );
  }
}
