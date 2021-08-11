import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/07-reactivos_observables/listas_reactivas.dart';
import 'package:flutter_getx/pages/07-reactivos_observables/reactivo_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class ReactivoPage extends StatelessWidget {
  const ReactivoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Dibujar Page Reactivo");
    return GetBuilder<ReactivoController>(
      init: ReactivoController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("Reactivos"),
        ),
        body: ListView(
          children: [
            Obx(
              () {
                print("Dibujar contador");
                return Text(
                  "${_.counter}",
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                );
              },
            ),
            Divider(),
            SizedBox(height: 20),
            ListasReactivas()
          ],
        ),
        /* body: Center(
          child: 
        ), */
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Icon(Icons.calendar_today),
              onPressed: _.addItem,
              /* onPressed: () {
                _.decrement();
              }, */
            ),
            FloatingActionButton(
              child: Icon(Icons.minimize_outlined),
              onPressed: _.decrement,
              /* onPressed: () {
                _.decrement();
              }, */
            ),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                _.increment();
              },
            )
          ],
        ),
      ),
    );
  }
}
