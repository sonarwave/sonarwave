import 'dart:math';

import 'package:flutter/material.dart';

class RadarBackgroundPainter extends CustomPainter {
  final double radarRange;

  const RadarBackgroundPainter({
    required this.radarRange,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);

    final radialPaint = Paint()
      ..shader = SweepGradient(
        center: Alignment.center,
        startAngle: 0,
        endAngle: pi * 2,
        colors: const [
          Colors.transparent,
          Color(0xFF255C25),
          Color(0xFF0ef30f),
        ],
        stops: [
          0,
          1 - (radarRange / 100),
          1,
        ],
      ).createShader(Rect.fromCircle(center: center, radius: radius));

    canvas.drawCircle(center, radius / 100 * 90, radialPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
