import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HoraActualWidget extends StatefulWidget {
  const HoraActualWidget({super.key});

  @override
  _HoraActualWidgetState createState() => _HoraActualWidgetState();
}

class _HoraActualWidgetState extends State<HoraActualWidget> {
  late String _horaActual;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _horaActual = _obtenerHoraActual(); // Inicializa con la hora actual
    _iniciarTimer(); // Inicia el temporizador
  }

  void _iniciarTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _horaActual = _obtenerHoraActual(); // Actualiza la hora cada segundo
      });
    });
  }

  String _obtenerHoraActual() {
    final ahora = DateTime.now();
    return DateFormat('HH:mm:ss').format(ahora); // Formato de 24 horas
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancela el temporizador al destruir el widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _horaActual,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
