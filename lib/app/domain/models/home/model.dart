import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';


@freezed
class Model with _$Model {

  const factory Model({
    String? label,             // Etiqueta de la alarma (opcional)
    String? dateTime,          // Fecha y hora de la alarma en formato String (opcional)
    required bool check,       // Estado de la alarma (activa o inactiva)
    String? when,              // Frecuencia o momento de la alarma (opcional)
    int? id,                   // ID único de la alarma (opcional)
    int? milliseconds,         // Hora de la alarma en milisegundos (opcional)
  }) = _Model;

  // Método `fromJson` que permite crear un objeto `Model` a partir de un JSON.
  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}

// Métodos de conversión de JSON a `Model` y viceversa.
// modelFromJson y modelToJson se encargan de codificar y decodificar instancias `Model` a JSON.
Model modelFromJson(String str) => Model.fromJson(json.decode(str));
String modelToJson(Model data) => json.encode(data.toJson());
