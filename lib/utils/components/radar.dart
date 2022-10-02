import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sonarwave/utils/painters/painters.dart';

class Radar extends StatefulWidget {
  final double radarRange;

  const Radar({
    Key? key,
    required this.radarRange,
  }) : super(key: key);

  @override
  State<Radar> createState() => _RadarState();
}

class _RadarState extends State<Radar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 7),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: pi * 2).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedBuilder(
          animation: _animation,
          builder: (context, _) {
            return Stack(
              children: [
                Transform.rotate(
                  angle: _animation.value - (pi / 2),
                  child: CustomPaint(
                    size: size,
                    painter: RadarBackgroundPainter(
                      radarRange: widget.radarRange,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        CustomPaint(
          size: size,
          painter: RadarLinePainter(),
        ),
      ],
    );
  }
}
