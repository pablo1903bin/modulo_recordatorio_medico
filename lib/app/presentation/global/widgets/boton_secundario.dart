

import 'package:flutter/material.dart';

import 'colores.dart';
import 'styles.dart';

class BotonSecundario extends StatelessWidget {

  final String _titulo;
  final Function()? onPressed;


  const BotonSecundario({super.key, required String titulo, this.onPressed}):_titulo = titulo;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorSecundario,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        elevation: 5,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.transparent)
        )
      ),
      child: Text(
        _titulo,
        style: textStyleBotonSecundario,
      ) 
    );
  }


}