import 'package:flutter/material.dart';

class AppFlutterEntrypoint extends StatelessWidget {
  const AppFlutterEntrypoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi Entry Point App Flutter'),
        ),
        body: const Center(
          child: Text('Mi entry point de mi módulo app Flutter'),
        ),
      ),
    );
  }
}
