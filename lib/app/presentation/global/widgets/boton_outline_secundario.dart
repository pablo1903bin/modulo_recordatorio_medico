

import 'package:flutter/material.dart';

import 'colores.dart';
import 'styles.dart';

class BotonOutlineSecundario extends StatelessWidget{

  final String _titulo;
  final Function()? onPressed;

  const BotonOutlineSecundario({super.key, required String titulo, this.onPressed}): _titulo=titulo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: colorSecundario)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 1),
          child: Text(_titulo, style: textStyleSecundarioBold),
        ),
      ),
    );
  }


}