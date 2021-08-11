import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/10-custom_painter/widgets/headers.dart';

class CustomPainterPage extends StatelessWidget {
  const CustomPainterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: HeaderDiagonal(),
      body: HeaderPico(),
    );
  }
}
