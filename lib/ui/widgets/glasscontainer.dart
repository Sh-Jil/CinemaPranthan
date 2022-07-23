import 'dart:ui';
import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final bool isRectangle;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final double blurPower;
  final List<Color> gradientColors;
  final Widget child;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  const GlassContainer(
      {Key? key,
      this.isRectangle = true,
      this.borderRadius = BorderRadius.zero,
      this.width,
      this.height,
      this.blurPower = 0.0,
      this.margin,
      this.padding,
      this.border,
      this.boxShadow,
      required this.child,
      required this.gradientColors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isRectangle) {
      return ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurPower, sigmaY: blurPower),
          child: Container(
              margin: margin,
              padding: padding,
              decoration: BoxDecoration(
                  boxShadow: boxShadow,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: gradientColors),
                  shape: BoxShape.rectangle,
                  borderRadius: borderRadius),
              child: child),
        ),
      );
    } else {
      return ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurPower, sigmaY: blurPower),
          child: Container(
              margin: margin,
              padding: padding,
              decoration: BoxDecoration(
                  boxShadow: boxShadow,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: gradientColors),
                  shape: BoxShape.circle),
              child: child),
        ),
      );
    }
  }
}
