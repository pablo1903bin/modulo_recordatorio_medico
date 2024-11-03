// lib/app/presentation/global/widgets/background_image.dart
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final String assetPath;
  final Color backgroundColor;
  final double widthFactor;
  final double heightFactor;

  const BackgroundImage({
    super.key,
    required this.assetPath,
    this.backgroundColor = Colors.white,
    this.widthFactor = 0.5,
    this.heightFactor = 0.5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      alignment: Alignment.center,
      child: Container(
        width: MediaQuery.of(context).size.width * widthFactor,
        height: MediaQuery.of(context).size.height * heightFactor,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetPath),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
