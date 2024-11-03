import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_flutter_module/app/presentation/modules/home/controllers/home_controller.dart';
import 'package:provider/provider.dart';

class AgregarAlarma extends StatefulWidget {
  const AgregarAlarma({super.key});

  @override
  State<AgregarAlarma> createState() => _AddAlaramState();
}

class _AddAlaramState extends State<AgregarAlarma> {
  late TextEditingController nombreMedicamentoController;
  late TextEditingController descripcionController;
  late TextEditingController dosisController;
  late TextEditingController metodoAdministracionController;
  late TextEditingController duracionTratamientoController;

  DateTime? fechaInicio;
  DateTime? notificationtime;
  String? frecuenciaIntervalo = "Diaria";
  int frecuenciaUnidades = 1;
  bool repeat = false;
  String estado = "Activo";
  DateTime fechaCreacion = DateTime.now();

  @override
  void initState() {
    super.initState();
    nombreMedicamentoController = TextEditingController();
    descripcionController = TextEditingController();
    dosisController = TextEditingController();
    metodoAdministracionController = TextEditingController();
    duracionTratamientoController = TextEditingController();
    context.read<HomeController>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Recordatorio',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildTextField(
                  "Nombre Medicamento", nombreMedicamentoController),
              _buildTextField("Descripción", descripcionController),
              _buildTextField("Dosis", dosisController),
              _buildTextField(
                  "Método de Administración", metodoAdministracionController),
              _buildTextField(
                  "Duración del Tratamiento", duracionTratamientoController),

              // Selector de fecha de inicio del tratamiento
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: GestureDetector(
                  onTap: () async {
                    fechaInicio = await _selectDate(context, fechaInicio);
                    setState(
                        () {}); // Actualiza la interfaz cuando se selecciona la fecha
                  },
                  child: Container(
                    height: 48, // Altura similar al TextField
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12), // Simula el padding del TextField
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue), // Color del borde
                      borderRadius: BorderRadius.circular(
                          8), // Radio del borde similar al TextField
                    ),
                    alignment:
                        Alignment.centerLeft, // Alinea el texto a la izquierda
                    child: Text(
                      fechaInicio != null
                          ? DateFormat('yyyy-MM-dd').format(fechaInicio!)
                          : "Seleccione Fecha Inicio",
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 16, // Tamaño de texto similar al TextField
                      ),
                    ),
                  ),
                ),
              ),

              // Hora de inicio
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Center(
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.time,
                    onDateTimeChanged: (DateTime value) {
                      setState(() => notificationtime = value);
                    },
                  ),
                ),
              ),
              // Frecuencia e intervalo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Frecuencia Unidades"),
                  DropdownButton<int>(
                    value: frecuenciaUnidades,
                    items: List.generate(10, (index) => index + 1)
                        .map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() => frecuenciaUnidades = value ?? 1);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Intervalo de Frecuencia"),
                  DropdownButton<String>(
                    value: frecuenciaIntervalo,
                    items: ["Diaria", "Semanal", "Mensual"].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() => frecuenciaIntervalo = value);
                    },
                  ),
                ],
              ),
              // Botón para guardar recordatorio
              ElevatedButton(
                onPressed: () {
                  print("Guardar Recordatorio.... ⏰🚩⏰🚩.... ");
                  if (_validateInputs()) {
                    Random random = Random();
                    int randomNumber = random.nextInt(100);

                    context.read<HomeController>().setAlaram(
                          nombreMedicamentoController.text,
                          DateFormat('yyyy-MM-dd HH:mm')
                              .format(notificationtime!),
                          true,
                          frecuenciaIntervalo!,
                          randomNumber,
                          notificationtime!.millisecondsSinceEpoch,
                        );

                    //Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("Por favor, llene todos los campos")),
                    );
                  }
                },
                child: const Text("Guardar Recordatorio"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          color: Color.fromARGB(255, 85, 82, 82), // Color del texto ingresado
          fontSize: 16, // Tamaño del texto ingresado
        ),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 181, 191, 199), // Color del label
            fontSize: 14, // Tamaño del label
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8), // Ajuste del borde inicial
            borderSide: const BorderSide(
                color: Colors.blue, width: 1.0), // Ancho más delgado
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(8), // Ajuste del borde habilitado
            borderSide: const BorderSide(
                color: Colors.blue, width: 1.0), // Ancho reducido a 1.0
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8), // Ajuste del borde enfocado
            borderSide: const BorderSide(
                color: Colors.blue, width: 1.0), // Ancho más delgado al enfocar
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        ),
      ),
    );
  }

  Future<DateTime?> _selectDate(
      BuildContext context, DateTime? initialDate) async {
    return await showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
  }

  bool _validateInputs() {
    return nombreMedicamentoController.text.isNotEmpty &&
        descripcionController.text.isNotEmpty &&
        dosisController.text.isNotEmpty &&
        metodoAdministracionController.text.isNotEmpty &&
        duracionTratamientoController.text.isNotEmpty &&
        fechaInicio != null &&
        notificationtime != null;
  }
}
