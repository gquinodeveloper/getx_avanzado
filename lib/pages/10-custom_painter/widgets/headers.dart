import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Colors.red,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //Propiedades del Lapiz
    lapiz.color = Colors.purple[900] ?? Colors.red;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20.0;

    //Definir pizarra
    final path = Path();

    //Dibujar en pizarra
    path.moveTo(0, size.height * .35);
    path.lineTo(size.width, size.height * .30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class HeaderPico extends StatelessWidget {
  const HeaderPico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Colors.red,
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends  CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //Definir propiedades del lapiz
    lapiz.color = Colors.purple[900] ?? Colors.red;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20.0;

    //Definir Pizarra
    final path = Path();
    path.lineTo(0, size.height * .25);
    path.lineTo(size.width * .5, size.height * .35);
    path.lineTo(size.width, size.height * .25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    //Mostrar
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}