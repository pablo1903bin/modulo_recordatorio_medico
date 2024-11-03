import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:my_flutter_module/app/domain/models/home/model.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../../domain/failures/token/token_failure.dart';
import '../../domain/functional/respuesta.dart';
import '../../domain/repositories/native_repository.dart';
import '../services/device/native_services.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

class NativeRepositoryImpl implements NativeRepository {
  NativeService service;

  NativeRepositoryImpl(this.service);



  @override
  Future<void> programarAlarma({required Model model}) async{

        await service.programarAlarmaMedica(model: model);
  }


   static Future<void> initNotifications() async {

      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));

      tz.initializeTimeZones();
  }
    Future<void> programaNotificationTest(int randomnumber) async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      randomnumber,
      'Prueba de Alarma', // Cambia el título a prueba
      'Esta es una prueba', // Cuerpo de notificación
      tz.TZDateTime.now(tz.local)
          .add(const Duration(seconds: 5)), // Activa en 5 segundos
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'your_channel_id',
          'your_channel_name',
          channelDescription: 'Test notification',
          sound: RawResourceAndroidNotificationSound("alarmloud"),
          playSound: true,
          priority: Priority.high,
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  @override
  Future<void> mostrarToast({String? msj}) async {
    await service.mostrarToastNativo(msj: msj);
  }

  @override
  Future<Respuesta<TokenFailure, String>> getToken() async {
    String? token = await service.getToken();
    if (token != null) {
      if (token == "cancelo") {
        return Respuesta.error(TokenFailure.cancelo());
      }

      return Respuesta.exito(token);
    }

    return Respuesta.error(TokenFailure.notFound());
  }

  @override
  Future<int?> obtenerPorcentajeCargaBateria() {
    final batPor = service.getBatteryLevel();
    return batPor;
  }

  @override
  Future<String?> getSOVersion() {
    final batPor = service.getSOVersion();
    return batPor;
  }

}
