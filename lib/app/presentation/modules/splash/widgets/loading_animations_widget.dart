// lib/app/presentation/global/widgets/loading_animation.dart
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingAnimation extends StatelessWidget {
  final String animationPath;
  final double width;
  final double height;

  const LoadingAnimation({
    super.key,
    required this.animationPath,
    this.width = 150,
    this.height = 150,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      animationPath,
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }
}
