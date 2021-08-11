import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/03-ciclo_de_vida/splash_page.dart';
import 'package:flutter_getx/pages/10-custom_painter/custom_painter_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'pages/04-productos_global/product_global_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContextcontext) {
    //Controller Global
    Get.put(ProductGlobalController());

    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SplashPage(),
      home: CustomPainterPage(),
      getPages: [],
    );
  }
}
