import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_module/app/domain/models/home/model.dart';
import 'package:my_flutter_module/app/domain/models/recordatorios/recordatorio_response.dart';
import 'package:my_flutter_module/app/presentation/global/controller/boton_cargando_controller.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
     BotonCargandoController? botonController,
     int? level,
     @Default("") String? version,
     RecordatorioResponse? recordatorioResponse,
         List<Model>? listaAlarmas,
  }) = _HomeState;
}
