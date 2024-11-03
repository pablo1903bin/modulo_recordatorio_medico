import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/data/repositories_implementations/native_repository_impl.dart';
import 'package:my_flutter_module/mmovil_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  NativeRepositoryImpl.initNotifications();

  runApp(const MmovilApp());
}

void appModuleFlutter() {
  runApp(const MmovilApp());
}
