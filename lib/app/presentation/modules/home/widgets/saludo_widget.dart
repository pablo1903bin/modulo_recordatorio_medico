import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';
import 'package:my_flutter_module/app/presentation/modules/home/controllers/home_controller.dart';
import 'package:provider/provider.dart';

class SaludoWidget extends StatelessWidget {
  const SaludoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<HomeController>();

    return FutureBuilder<String?>(
      future: controller.getUserName(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          return const Center(
            child: Text('Error'),
          );
        }

        final userName = capitalizeFirstLetter(snapshot.data ?? "Invitado");

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              // Envuelve la columna en Flexible
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Hola! ",
                          style: TextStyle(
                            fontSize: 24,
                            color: colorTres,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SansSerif',
                          ),
                        ),
                        TextSpan(
                          text: userName,
                          style: const TextStyle(
                            fontSize: 28,
                            color: colorPrincipal,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SansSerif',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  String capitalizeFirstLetter(String name) {
    if (name.isEmpty) return name;
    return name[0].toUpperCase() + name.substring(1).toLowerCase();
  }
}
