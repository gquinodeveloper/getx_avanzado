import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/08-clases_reactivas/clases_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ClasesReactivaspage extends StatelessWidget {
  const ClasesReactivaspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClasesController>(
      init: ClasesController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("Clases reactivas"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () {
                  print("Name");
                  return Text(_.rxPet.name);
                },
              ),
              SizedBox(height: 10.0),
              Obx(
                () {
                  print("Edad");
                  return Text("${_.rxPet.age}");
                },
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _.setAge,
        ),
      ),
    );
  }
}
