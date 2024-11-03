import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class InternetChecker {
  Future<bool> hasInternet() async {
    try {
      if (kIsWeb) {
        //Si estamos en una web
        final response = await get(Uri.parse('google.com'));

        return response.statusCode == 200;
      } else {
        // o en mobil
        // Verificamos si podemos realizar un lookup DNS a google.com
        final list = await InternetAddress.lookup('google.com');

        // Si la lista no está vacía y tiene direcciones IP válidas, hay conexión a Internet
        if (list.isNotEmpty && list.first.rawAddress.isNotEmpty) {
          return true;
        } else {
          return false;
        }
      }
    } catch (e) {
      // Si se produce una excepción (posiblemente sin conexión), devolvemos false
      return false;
    }
  }
}
