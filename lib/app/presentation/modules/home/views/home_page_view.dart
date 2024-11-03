import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_module/app/domain/models/recordatorios/recordatorio.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/custom_app_bar.dart';
import 'package:my_flutter_module/app/presentation/modules/home/controllers/home_controller.dart';
import 'package:my_flutter_module/app/presentation/modules/home/widgets/hora_actual_widget.dart';
import 'package:my_flutter_module/app/presentation/modules/home/widgets/saludo_widget.dart';
import 'package:my_flutter_module/app/presentation/modules/home/widgets/upload_prescription_button_widget.dart';
import 'package:my_flutter_module/app/presentation/routes/route_path.dart';
import 'package:provider/provider.dart';

import '../../../global/widgets/drawer_widget.dart';
import '../../../mixin/controllers_mixin.dart';
import '../../../mixin/mixin_repositorios_comunes.dart';

class HomePageView extends StatelessWidget
    with ControllersMixin, RepositoriosComunes {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeController>().initializeNotifications();
    final controller = context.read<HomeController>();

    return Scaffold(
      backgroundColor: colorSueve,
      appBar: const CustomAppBar(

      ),
      drawer: const AppDrawer(),
      body: _getBody(context, controller),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).push(
            RoutePath.programaMed,
          );
        },
        backgroundColor: colorSecundarioAlterno,
        child: const Icon(Icons.alarm),
      ),
    );
  }

  Widget _getBody(BuildContext context, HomeController controller) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SaludoWidget(),
          const SizedBox(height: 20),
          const HoraActualWidget(),
          const SizedBox(height: 20),
          UploadPrescriptionButton(onTap: () {
            controller.capturarImagen();
          }),
          const SizedBox(height: 12),
          Expanded(
            child: _getContainerConsumer(context, controller),
          ),
        ],
      ),
    );
  }

  Widget _getContainerConsumer(
      BuildContext context, HomeController controller) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.getData();
    });

    return Consumer<HomeController>(builder: (context, alarm, child) {
      return ListView.builder(
        itemCount: alarm.listaAlarmas.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: const Color.fromARGB(255, 246, 247, 246),
            elevation: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          alarm.listaAlarmas[index].label ?? "Sin título",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(alarm.listaAlarmas[index].dateTime ?? ""),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        controller.deleteRecordatorio(
                            alarm.listaAlarmas[index].id!);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 8),
                  child: Text(
                    "Días de administración: ${alarm.listaAlarmas[index].when ?? ''}",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 12),
                  child: Text(
                    "ID: ${alarm.listaAlarmas[index].id}",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }

  Widget _buildRecordatorioCard(Recordatorio recordatorio) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recordatorio.nombreMedicamento,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dosis: ${recordatorio.dosis}",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "Frecuencia: ${recordatorio.frecuenciaIntervalo}",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              "Inicio: ${recordatorio.fechaInicio} a las ${recordatorio.horaInicio}",
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
