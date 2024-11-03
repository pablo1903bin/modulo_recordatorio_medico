
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';
import 'package:my_flutter_module/app/presentation/routes/route_path.dart';
import 'package:my_flutter_module/gen/i18n/translations_mobil.g.dart';

class RegisterRow extends StatelessWidget {
  final TranslationsCommons text;

  const RegisterRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text.loguin.new_user,
          style: TextStyle(color: Colors.grey[700]),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(RoutePath.crearUsuarios);
          },
          child: Text(
            text.loguin.register_now,
            style: const TextStyle(
              color: colorPrincipal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
