import 'package:flutter/material.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';


class UploadPrescriptionButton extends StatelessWidget {
  final VoidCallback onTap;

  const UploadPrescriptionButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.camera_alt,
              color: colorPrincipal,
            ), // Icono de cámara
            SizedBox(width: 8),
            Text(
              'Sube tu receta',
              style: TextStyle(color: colorPrincipal, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
