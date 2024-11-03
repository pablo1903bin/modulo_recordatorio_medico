import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:my_flutter_module/app/presentation/global/widgets/colores.dart';
import 'package:my_flutter_module/app/presentation/routes/route_path.dart';

class ProgramaMedicamentosView extends StatefulWidget {
  const ProgramaMedicamentosView({super.key});

  @override
  _ProgramarMedicamentoScreenState createState() =>
      _ProgramarMedicamentoScreenState();
}

class _ProgramarMedicamentoScreenState extends State<ProgramaMedicamentosView> {
  final _formKey = GlobalKey<FormState>();

  // Controladores para los campos
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _descripcionController = TextEditingController();
  final TextEditingController _dosisController = TextEditingController();
  final TextEditingController _frecuenciaController = TextEditingController();
  DateTime? _fechaInicio;
  TimeOfDay? _horaInicio;
  String? _duracion;

  @override
  void dispose() {
    // Libera los controladores cuando no se usen
    _nombreController.dispose();
    _descripcionController.dispose();
    _dosisController.dispose();
    _frecuenciaController.dispose();
    super.dispose();
  }

  // Método para mostrar el selector de fecha
  Future<void> _seleccionarFechaInicio(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _fechaInicio) {
      setState(() {
        _fechaInicio = picked;
      });
    }
  }

  // Método para mostrar el selector de hora
  Future<void> _seleccionarHoraInicio(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _horaInicio) {
      setState(() {
        _horaInicio = picked;
      });
    }
  }

  // Guardar el formulario
  void _guardarFormulario() {
    if (_formKey.currentState!.validate()) {
      // Validación para fecha, hora y duración
      if (_fechaInicio == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Por favor, selecciona una fecha de inicio')),
        );
        return;
      }

      if (_horaInicio == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Por favor, selecciona una hora de inicio')),
        );
        return;
      }

      if (_duracion == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Por favor, selecciona una duración')),
        );
        return;
      }

      // Aquí puedes manejar los datos del formulario
      final nombre = _nombreController.text;
      final descripcion = _descripcionController.text;
      final dosis = _dosisController.text;
      final frecuencia = _frecuenciaController.text;
      final fechaInicio = DateFormat('dd/MM/yyyy').format(_fechaInicio!);
      final horaInicio = _horaInicio!.format(context);
      final duracion = _duracion ?? 'Indefinido';

      // Muestra los datos capturados (puedes guardarlos en la base de datos o realizar otras acciones)
      print('Nombre: $nombre');
      print('Descripción: $descripcion');
      print('Dosis: $dosis');
      print('Frecuencia: $frecuencia');
      print('Fecha de inicio: $fechaInicio');
      print('Hora de inicio: $horaInicio');
      print('Duración: $duracion');

      // Después de guardar los datos, puedes navegar hacia atrás o mostrar un mensaje de éxito
      GoRouter.of(context).pushReplacement(RoutePath.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorSueve,
      appBar: AppBar(
        backgroundColor: colorSueve,
        title: const Text(
          'Recordatorio',
          style: TextStyle(color: colorPrincipal, fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: colorPrincipal,
          ),
          onPressed: () {
            Navigator.pop(context); // Regresa a la pantalla anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16,
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 20),
              _buildCustomTextFormField(
                controller: _nombreController,
                labelText: 'Nombre del Medicamento',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa el nombre del medicamento';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              _buildCustomTextFormField(
                controller: _descripcionController,
                labelText: 'Descripción/Nota',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa una descripcion';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              _buildCustomTextFormField(
                controller: _dosisController,
                labelText: 'Dosis',
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa una dosis';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              _buildCustomTextFormField(
                controller: _frecuenciaController,
                labelText: 'Frecuencia (ejm., cada 8 horas)',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa la frecuencia';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // Selector de fecha con apariencia de TextFormField
              // Selector de fecha con apariencia de TextFormField
              // Selector de fecha con apariencia de TextFormField
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Fecha de inicio',
                  labelStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                  filled: true,
                  fillColor: colorSueve,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12), // Ajusta el tamaño del campo
                  suffixIcon:
                      const Icon(Icons.calendar_today), // Ícono del calendario
                ),
                style: TextStyle(
                  color: _fechaInicio == null
                      ? colorAlterno4
                      : colorPrincipal, // Color azul si no está seleccionada, negro si ya tiene un valor
                ),
                controller: TextEditingController(
                  text: _fechaInicio != null
                      ? DateFormat('dd/MM/yyyy').format(_fechaInicio!)
                      : 'No seleccionada',
                ),
                onTap: () => _seleccionarFechaInicio(context),
              ),
              const SizedBox(height: 16),
// Selector de hora con apariencia de TextFormField
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Hora de inicio',
                  labelStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                  filled: true,
                  fillColor: colorSueve,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12), // Ajusta el tamaño del campo
                  suffixIcon: const Icon(Icons.access_time), // Ícono del reloj
                ),
                style: TextStyle(
                  color: _horaInicio == null
                      ? colorAlterno4
                      : colorPrincipal, // Color azul si no está seleccionada, negro si ya tiene un valor
                ),
                controller: TextEditingController(
                  text: _horaInicio != null
                      ? _horaInicio!.format(context)
                      : 'No seleccionada',
                ),
                onTap: () => _seleccionarHoraInicio(context),
              ),

              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Duración del tratamiento',
                  labelStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                  filled: true,
                  fillColor: colorSueve,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:
                        const BorderSide(color: colorPrincipal, width: 2.0),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                ),
                dropdownColor: colorSueve,
                items: ['1 semana', '2 semanas', '1 mes', 'Indefinido']
                    .map((duracion) => DropdownMenuItem(
                          value: duracion,
                          child: Text(
                            duracion,
                            style: const TextStyle(
                                color: colorPrincipal, fontSize: 14),
                          ),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _duracion = value;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Por favor, selecciona una duración';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _guardarFormulario,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      colorSecundarioAlterno, // Cambia a cualquier color que prefieras
                ),
                child: const Text('Guardar', style: TextStyle(fontSize: 16, color: colorPrincipal),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomTextFormField({
    required TextEditingController controller,
    required String labelText,
    String? Function(String?)? validator,
    TextInputType? keyboardType,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(fontSize: 14, color: colorAlterno4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      ),
      style: const TextStyle(fontSize: 14, color: colorPrincipal),
      validator: validator,
    );
  }
}
