import 'dart:async';

import 'package:my_flutter_module/app/domain/models/home/model.dart';

import '../failures/token/token_failure.dart';
import '../functional/respuesta.dart';

abstract class NativeRepository {
  Future<void> mostrarToast({String? msj});

  Future<Respuesta<TokenFailure, String>> getToken();

  Future<int?> obtenerPorcentajeCargaBateria();

  Future<String?> getSOVersion();

  Future<void> programarAlarma({required Model model});

}
