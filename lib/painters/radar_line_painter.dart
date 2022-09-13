import 'dart:math';
import 'package:flutter/material.dart';

class RadarLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const radarColor = Color(0xFF0ef30f);
    final radarLinesColor = radarColor.withOpacity(.2);

    final center = size.center(Offset.zero);

    final firstArcRadius = min(size.width / 2, size.height / 2);

    final paint = Paint()
      ..color = radarLinesColor
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    for (int i = 0; i < 5; i++) {
      drawArc(canvas, center, firstArcRadius / 100 * (i * 18), paint);
    }

    final linePaint = Paint()
      ..color = radarLinesColor
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    const outterLinesCount = 120;
    const distanceFromOuterCircle = 15;

    for (var i = 0; i < outterLinesCount; i++) {
      final angle = i * pi / (outterLinesCount / 2);
      final start = Offset(
        center.dx + firstArcRadius * cos(angle),
        center.dy + firstArcRadius * sin(angle),
      );
      final end = Offset(
        center.dx + (firstArcRadius + distanceFromOuterCircle) * cos(angle),
        center.dy + (firstArcRadius + distanceFromOuterCircle) * sin(angle),
      );

      canvas.drawLine(start, end, linePaint);
    }

    const crossLinesCount = 4;

    for (var i = 0; i < crossLinesCount; i++) {
      final angle = i * pi / (crossLinesCount / 2);

      final x = center.dx + firstArcRadius * cos(angle);
      final y = center.dy + firstArcRadius * sin(angle);

      canvas.drawLine(center, Offset(x, y), paint);
    }
  }

  void drawArc(
    Canvas canvas,
    Offset center,
    double firstArcRadius,
    Paint paint,
  ) {
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: firstArcRadius),
      0,
      2 * pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
