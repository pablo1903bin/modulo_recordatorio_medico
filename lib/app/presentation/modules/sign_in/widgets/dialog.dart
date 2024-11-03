import 'package:flutter/material.dart';

class CustomDialog {
  // Método estático para mostrar el AlertDialog
  static Future<void> showAlertDialog({
    required BuildContext context,
    required String title,
    required String content,
    String confirmButtonText = 'OK',
    VoidCallback? onConfirm,
  }) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              if (onConfirm != null) {
                onConfirm();
              }
            },
            child: Text(confirmButtonText),
          ),
        ],
      ),
    );
  }
}
