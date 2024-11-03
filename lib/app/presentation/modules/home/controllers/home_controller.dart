import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_flutter_module/app.dart';
import 'package:my_flutter_module/app/domain/models/home/model.dart';
import 'package:my_flutter_module/app/presentation/global/controller/boton_cargando_controller.dart';
import 'package:my_flutter_module/app/presentation/mixin/mixin_repositorios_comunes.dart';
import 'package:my_flutter_module/app/presentation/mixin/mmovil_repositorios.dart';
import 'package:my_flutter_module/app/presentation/modules/home/controllers/state/home_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/timezone.dart' as tz;

import '../../../../states/state_notifier.dart';

class HomeController extends StateNotifier<HomeState>
    with RepositoriosComunes, MmovilRepositorios {
  HomeController(super.state);
  List<Model> listaAlarmas = [];
  late BuildContext context;
  late SharedPreferences preferences;
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  void setAlaram(String label, String dateTime, bool check, String repeat,
      int id, int milliseconds) async {


    final model = Model(id: milliseconds,milliseconds:milliseconds,label: label,dateTime: dateTime ,check: check, when: repeat);

    await nativeRepository.programarAlarma(model: model);
  }

  Future<void> getData() async {
    print("Obtener lista de alarmas... 😃 ");
    preferences = await SharedPreferences.getInstance();

    // Recupera la lista de alarmas almacenadas, identificadas con la clave "data".
    // La función `getStringList` devuelve `null` si no encuentra la clave.
    List<String>? cominglist = preferences.getStringList("data");

    // Verifica si la lista obtenida es `null`.
    // Esto indica que no hay datos almacenados para la clave "data".
    if (cominglist == null) {
      // Si `cominglist` es `null`, no hace nada y finaliza el método.
      // Este caso se da cuando no se han guardado alarmas aún.
    } else {
      // Si `cominglist` contiene datos:

      // Convierte cada elemento de `cominglist` (que está en formato JSON)
      // en un objeto `Model` usando `fromJson` y lo agrega a `modelist`.
      // `json.decode(e)` convierte el string JSON a un mapa de datos,
      // y `Model.fromJson` convierte el mapa en un objeto `Model`.
      listaAlarmas =
          cominglist.map((e) => Model.fromJson(json.decode(e))).toList();
      print(listaAlarmas.toString());
      notifica(state.copyWith(listaAlarmas: listaAlarmas));
    }
  }

  Future<void> verificarAlarmasGuardadas() async {
    // Obtén la lista de alarmas guardadas en `SharedPreferences`
    List<String>? storedAlarmList = preferences.getStringList("data");

    if (storedAlarmList != null && storedAlarmList.isNotEmpty) {
      print("Alarmas guardadas en SharedPreferences:");
      for (var alarmJson in storedAlarmList) {
        // Convierte cada alarma de JSON a `Model` y la imprime
        Model alarm = Model.fromJson(json.decode(alarmJson));
        print(
            "Alarma: ${alarm.label}, Fecha y Hora: ${alarm.dateTime}, Repetir: ${alarm.when}");
      }
    } else {
      print("No hay alarmas guardadas en SharedPreferences.");
    }
  }

  // Método para guardar las alarmas actuales en SharedPreferences.
  void setData() {
    print("Guardando las alarmas en SharedPreferences... ⏰⏰⏰ ");

    // Convierte cada objeto `Model` a JSON y guarda en `listofstring`
    List<String> listofstring =
        listaAlarmas.map((e) => json.encode(e.toJson())).toList();

    // Guarda `listofstring` en `SharedPreferences` bajo la clave "data"
    preferences.setStringList("data", listofstring);

    print("Alarmas guardadas exitosamente en SharedPreferences.");
  }

  Future<void> initializeNotifications() async {
    print("SE intenta Inicializar las ntificaciones ....  🚨 ");
    var androidInitSettings =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOSInitSettings = const DarwinInitializationSettings();
    var initSettings = InitializationSettings(
        android: androidInitSettings, iOS: iOSInitSettings);

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    final initialized = await flutterLocalNotificationsPlugin!.initialize(
      initSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );

    if (!initialized!) {
      print("Error al inicializar las notificaciones.");
    } else {
      print("Notificaciones inicializadas correctamente.");
    }
  }

  // Método para manejar la respuesta cuando se recibe una notificación.
  void onDidReceiveNotificationResponse(
      NotificationResponse notificationResponse) async {
    // Obtiene el payload (dato adicional) de la notificación.
    final String? payload = notificationResponse.payload;
    if (payload != null) {
      debugPrint(
          'notification payload: $payload'); // Imprime el payload si existe.
    }
    // Navega a la pantalla principal (MyApp) al hacer clic en la notificación.
    await Navigator.push(
        context, MaterialPageRoute<void>(builder: (context) => MyApp()));
  }

  // Método para mostrar una notificación simple inmediatamente.
  Future<void> ShowNotification() async {
    // Configuración específica de la notificación para Android.
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'your channel id', // ID del canal
      'your channel name', // Nombre del canal
      channelDescription: 'your channel description', // Descripción del canal
      importance: Importance.max, // Importancia máxima
      priority:
          Priority.high, // Prioridad alta para que aparezca inmediatamente
      ticker: 'ticker',
    );

    // Combina la configuración en un NotificationDetails para Android.
    const NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);

    // Muestra la notificación con un ID de 0, título y cuerpo.
    await flutterLocalNotificationsPlugin!.show(
        0, 'plain title', 'plain body', notificationDetails,
        payload: 'item x'); // Incluye un payload opcional.
  }

  Future<void> programaNotification(DateTime datetim, int randomnumber) async {
    // Verifica que el plugin esté inicializado.
    if (flutterLocalNotificationsPlugin == null) {
      print("Error: flutterLocalNotificationsPlugin no está inicializado.");
      return;
    }

    // Calcula el tiempo hasta la notificación en milisegundos.
    int newtime =
        datetim.millisecondsSinceEpoch - DateTime.now().millisecondsSinceEpoch;

    if (newtime <= 0) {
      print("La fecha/hora programada ya ha pasado.");
      return;
    }

    print("Configurando notificación...");
    print("Fecha de alarma en milisegundos: ${datetim.millisecondsSinceEpoch}");
    print(
        "Fecha actual en milisegundos: ${DateTime.now().millisecondsSinceEpoch}");
    print("Tiempo restante para la alarma en milisegundos: $newtime");

    // Configura la notificación para activarse en el futuro
    try {
      await flutterLocalNotificationsPlugin!.zonedSchedule(
        randomnumber, // ID único de la notificación
        'Hora de tu medicamento', // Título de la notificación
        'Es hora de tomar tu medicamento', // Mensaje de la notificación
        tz.TZDateTime.now(tz.local)
            .add(Duration(milliseconds: newtime)), // Hora programada
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'your_channel_id',
            'Recordatorio de medicamento',
            channelDescription: 'Recordatorio para tomar medicamento',
            sound: RawResourceAndroidNotificationSound(
                "alarmloud"), // Verifica que el archivo "alarm" esté en res/raw
            autoCancel: false,
            playSound: true,
            priority: Priority.max,
            importance: Importance.max,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );
      print("Notificación programada correctamente.   ⏰⏰⏰⏰⏰⏰⏰⏰⏰ ");
      notifica(state.copyWith(level: 3));
    } catch (e) {
      print("Error al programar la notificación: $e");
    }
  }

  // Elimina todos los recordatorios
  Future<void> deleteAllRecordatorios() async {
    listaAlarmas.clear(); // Limpia la lista de recordatorios
    await _updateStoredRecordatorios(); // Actualiza en SharedPreferences
  }

  Future<void> deleteRecordatorio(int id) async {
    print("Borrando un recordatorio....      🚩⏰🚩    ");
    listaAlarmas.removeWhere((recordatorio) =>
        recordatorio.id == id); // Elimina el que coincide con el ID
    await _updateStoredRecordatorios();
    await verificarRecordatoriosGuardados(); // Verifica el contenido actualizado
  }

  // Método privado para actualizar la lista de recordatorios en SharedPreferences
  Future<void> _updateStoredRecordatorios() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> recordatoriosJson = listaAlarmas
        .map((recordatorio) => json.encode(recordatorio.toJson()))
        .toList(); // Convierte cada recordatorio a JSON
    await prefs.setStringList(
        'data', recordatoriosJson); // Guarda en SharedPreferences
    notifica(state.copyWith(version: "2"));
  }

// Método para verificar el contenido actual de los recordatorios guardados
  Future<void> verificarRecordatoriosGuardados() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? recordatoriosJson =
        prefs.getStringList('recordatorios');
    if (recordatoriosJson == null || recordatoriosJson.isEmpty) {
      print("No hay recordatorios guardados.");
    } else {
      print("Recordatorios guardados en SharedPreferences:");
      for (var recordatorio in recordatoriosJson) {
        print(recordatorio); // Imprime cada recordatorio en formato JSON
      }
    }
  }

  // Método para cancelar una notificación específica mediante su ID.
  Future<void> cancelaNotification(int notificationid) async {
    // Llama al método cancel del plugin para eliminar la notificación.
    await flutterLocalNotificationsPlugin!.cancel(notificationid);
  }

  Future<void> mostrarToast({String? msj}) async {
    nativeRepository.mostrarToast(msj: msj);
  }

  Future<String?> getUserName() async {
    final name = await getAuthenticationRepository.getNameUser();
    return name;
  }

  Future<void> fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    final res =
        await getRecordatorioRepository.consultaRecordatoriosIdUser("16");

    res.when(
      error: (failure) {},
      exito: (recordatorioResponse) {
        notifica(state.copyWith(recordatorioResponse: recordatorioResponse));
      },
    );
  }

  Future<void> capturarImagen() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {}
  }

  Future<int?> getLeverBattery() async {
    final porcentaje = await nativeRepository.obtenerPorcentajeCargaBateria();

    notifica(state.copyWith(level: porcentaje));
    return porcentaje;
  }

  Future<String?> getSoVersion() async {
    final so = await nativeRepository.getSOVersion();
    notifica(state.copyWith(version: so));
    return so;
  }

  void loading(bool cargar) {
    if (state.botonController != null) {
      if (cargar) {
        state.botonController!.cargando();
      } else {
        state.botonController!.normal();
      }
    }
  }

  void addBotonController(BotonCargandoController controller) {
    changeState(state.copyWith(botonController: controller));
  }
}
