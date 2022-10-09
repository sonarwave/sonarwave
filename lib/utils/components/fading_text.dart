import 'package:flutter/material.dart';

class FadingText extends StatefulWidget {
  const FadingText(
    this.text, {
    Key? key,
    this.style,
    this.reverse = false,
  }) : super(key: key);

  final String text;
  final TextStyle? style;
  final bool reverse;

  @override
  _FadingTextState createState() => _FadingTextState();
}

class _FadingTextState extends State<FadingText> with TickerProviderStateMixin {
  final _characters = <MapEntry<String, Animation>>[];
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    var start = 0.2;
    final duration = 0.6 / widget.text.length;
    for (var rune in widget.text.runes) {
      final character = String.fromCharCode(rune);
      final animation = Tween(
        begin: 0.0,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          curve: Interval(start, start + duration, curve: Curves.easeInOut),
          parent: _controller,
        ),
      );
      _characters.add(MapEntry(character, animation));
      start += duration;
    }

/*     _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    }); */

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (widget.reverse) {
          _controller.reverse();
        }
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: _characters
          .map(
            (entry) => FadeTransition(
              opacity: entry.value as Animation<double>,
              child: Text(entry.key, style: widget.style),
            ),
          )
          .toList(),
    );
  }
}
