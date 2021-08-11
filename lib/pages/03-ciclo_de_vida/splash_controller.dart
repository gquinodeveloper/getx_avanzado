import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/04-productos_global/product_global_page.dart';
import 'package:flutter_getx/pages/05-user_api/user_page.dart';
import 'package:flutter_getx/pages/07-reactivos_observables/reactivo_page.dart';
import 'package:flutter_getx/pages/08-clases_reactivas/clases_reactivas_page.dart';
import 'package:flutter_getx/pages/09-socket_reactivos/socket_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    //print("onInit");
    _loadParametros();
    super.onInit();
  }

  @override
  void onReady() {
    //print("onReady");
    _nextPage();
    /* Get.dialog(
      AlertDialog(
        title: Text("Hola Mundo"),
      ),
    ); */
    super.onReady();
  }

  @override
  void onClose() {
    //print("onClose");
    super.onClose();
  }

  _loadParametros() {
    //
  }

  _nextPage() {
    Future.delayed(Duration(milliseconds: 600), () {
      //Get.to(ProductGlobalPage(), transition: Transition.zoom);
      //Navigator.push();
      //Get.off(() => ProductGlobalPage(), transition: Transition.zoom);
      //Navigator.pushReplacement

      //Get.off(() => UserPage());
      //Get.off(() => ReactivoPage());
      //Get.off(() => ClasesReactivaspage());
      Get.off(() => SocketPage());
    });
  }
}
