import 'package:my_flutter_module/app/domain/functional/respuesta.dart';
import 'package:my_flutter_module/app/domain/models/failures/recordatorio/recordatorio_failure.dart';
import 'package:my_flutter_module/app/domain/models/recordatorios/recordatorio_response.dart';

abstract class RecordatorioRepository {
     Future<Respuesta<RecordatorioFailure, RecordatorioResponse>> consultaRecordatoriosIdUser(String idUsuario);
}
