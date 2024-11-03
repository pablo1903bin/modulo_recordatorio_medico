import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color borderColor;
  final Color textColor;
  final double borderRadius;
  final double borderWidth;
  final double fontSize;

  const CustomOutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderColor = Colors.blueAccent,
    this.textColor = Colors.blueAccent,
    this.borderRadius = 16.0,
    this.borderWidth = 2.0,
    this.fontSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: textColor, side: BorderSide(color: borderColor, width: borderWidth), // Borde del botón
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius), // Bordes redondeados
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16), // Padding del botón
        textStyle: TextStyle(
          fontSize: fontSize, // Tamaño de la fuente
          fontWeight: FontWeight.w600, // Peso de la fuente
        ),
      ),
      child: Text(text),
    );
  }
}
