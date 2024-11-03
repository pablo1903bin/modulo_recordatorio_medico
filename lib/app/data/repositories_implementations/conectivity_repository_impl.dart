import 'package:connectivity_plus/connectivity_plus.dart';

import '../../domain/repositories/conectivity_repository.dart';
import '../services/device/internet_checker.dart';

class ConectivityRepositoryImpl implements ConectivityRepository {
  final Connectivity _connectivity;
  final InternetChecker _internetChecker;

  ConectivityRepositoryImpl(this._connectivity, this._internetChecker);

  @override
  Future<bool> get hasInternet async {
    final result = await _connectivity.checkConnectivity();
    // Si no hay conexión de red disponible, no tiene sentido intentar verificar la conectividad a Internet
    if (result == ConnectivityResult.none) {
      return false;
    }
    // Intentar verificar la conectividad a Internet
    return await _internetChecker.hasInternet();
  }
}
