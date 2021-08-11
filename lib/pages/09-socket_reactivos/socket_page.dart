import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/09-socket_reactivos/socket_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SocketPage extends StatelessWidget {
  const SocketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SocketController>(
      init: SocketController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Socket - Reactivo"),
          ),
          body: Center(
            child: Obx(() {
              print("Actualizando mensaje");
              return Text(
                _.message.value,
                style: TextStyle(fontSize: 20.0),
              );
            }),
          ),
        );
      },
    );
  }
}
