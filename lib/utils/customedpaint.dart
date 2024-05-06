import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.yellow // Set color
      ..strokeWidth = 4 // Set line width
      ..strokeCap = StrokeCap.round; // Set line cap

    canvas.drawLine(
      Offset(0, size.height / 2), // Start point
      Offset(size.width, size.height / 2), // End point
      paint,
    );

    canvas.drawLine(
      Offset(size.width / 2, 0), // Start point
      Offset(size.width / 2, size.height), // End point
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
