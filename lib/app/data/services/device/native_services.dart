import 'package:flutter/services.dart';
import 'package:my_flutter_module/app/domain/models/home/model.dart';

class NativeService {
  final MethodChannel? platform;

  NativeService({required this.platform});

  checkPermision() {}

  requestPermision() {}

  start() {}
  stop() {}

Future<void> programarAlarmaMedica({required Model model}) async {
  print("[NativeService]____  Programando una nueva alarma.....    ✨✨✨✨✨✨✨ ");
  if (platform == null) {
    return;
  }
  try {
    // Convertir `Model` a un `Map<String, dynamic>`
    Map<String, dynamic> alarmaMap = model.toJson();

    await platform!.invokeMethod('crearAlarma', {'alarma': alarmaMap});
  } on PlatformException catch (e) {
    print("Error al programar la alarma: ${e.message}");
  }
}


  Future<void> mostrarToastNativo({String? msj}) async {
    msj = msj ?? "Hola desde flutter!";

    if (platform == null) {
      return; // Manejo en caso de que no haya plataforma configurada
    }
    try {
      await platform!.invokeMethod('mostrarToast', {'message': msj});
    } on PlatformException catch (e) {
      print("Error al mostrar el Toast: ${e.message}");
    }
  }

  // Método para obtener el nivel de batería
  Future<String?> getSOVersion() async {
    if (platform == null) {
      return null; // Manejo en caso de que no haya plataforma configurada
    }

    try {
      // Llama al método nativo para obtener el nivel de batería
      final String soVersion = await platform!.invokeMethod("getOSVersion");

      return soVersion;
    } on PlatformException catch (e) {
      // Manejo de errores en caso de que el método nativo falle
      print("Error obteniendo nivel de batería: ${e.message}");
      return null;
    }
  }

  // Método para obtener el nivel de batería
  Future<int?> getBatteryLevel() async {
    if (platform == null) {
      return null; // Manejo en caso de que no haya plataforma configurada
    }

    try {
      // Llama al método nativo para obtener el nivel de batería
      final int batteryLevel = await platform!.invokeMethod("getBatteryLevel");

      return batteryLevel;
    } on PlatformException catch (e) {
      // Manejo de errores en caso de que el método nativo falle
      print("Error obteniendo nivel de batería: ${e.message}");
      return null;
    }
  }

  Future<String?> getToken() async {
    if (platform == null) {
      return "valido";
      //return "cancelo";
      //return null;
    }

    final Map<dynamic, dynamic> params =
        await platform!.invokeMethod("getToken");

    if (params.containsKey("token")) {
      return params["token"];
    }

    return null;
  }
}
