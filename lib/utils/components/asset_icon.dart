import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetIcon extends StatelessWidget {
  const AssetIcon(
    this.url, {
    this.height,
    this.width,
    this.color,
    super.key,
  });

  final String url;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      url,
      height: height,
      width: width,
      color: color ?? Theme.of(context).colorScheme.onSurface,
    );
  }
}
