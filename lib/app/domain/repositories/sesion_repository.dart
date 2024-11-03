import '../models/sesion/sesion_state.dart';

abstract class SesionRepository {
  void save(SesionState state);

  SesionState get sesion;

  void replaceSession(SesionState sesionState);
}
