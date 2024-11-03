import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../global/widgets/custom_app_bar.dart';
import '../../../global/widgets/drawer_widget.dart';
import '../../../mixin/controllers_mixin.dart';
import '../../../routes/route_path.dart';
import '../controller/counter_controller.dart';

class CounterScreen extends StatelessWidget with ControllersMixin {
  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: const CustomAppBar(title: RoutePath.testProvider,), 
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                getCounterController(context).increment();
              },
              child: Container(
                width: 270,
                height: 60.0,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 183, 89),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Text('Sumar 1'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 183, 89),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(45.0),
              margin: const EdgeInsets.all(32.0),
              width: 500.0,
              height: 200.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<CounterController>(
                    builder: (context, controller, child) {
                      print(
                          'Estado actual ${getCounterController(context).state} ❤');
                      if (!getCounterController(context).state.mostrarContador) {
                        return Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 21,
                            vertical: 10,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Card: ${controller.state.value}',
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 29, 0, 156)),
                            ),
                          ),
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    getCounterController(context).decrement();
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blueAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                  ),
                  child: const Text(
                    'Restar Uno!',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () {
                    getCounterController(context).increment();
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blueAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                  ),
                  child: const Text(
                    'Sumar',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    getCounterController(context).ocultarTargeta();
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blueAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                  ),
                  child: const Text(
                    'Mostrar Card!',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    getCounterController(context).mostrarTargeta();
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blueAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                  ),
                  child: const Text(
                    'Ocultar Card!',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
