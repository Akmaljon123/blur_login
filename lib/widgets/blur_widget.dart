import 'dart:ui';

import 'package:flutter/cupertino.dart';

class BlurContainer extends StatelessWidget{
  final double radius;
  final double blur;
  final Widget child;
  const BlurContainer({super.key, required this.radius, required this.blur, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blur,
          sigmaY: blur
        ),
        child: child,
      ),
    );
  }
}