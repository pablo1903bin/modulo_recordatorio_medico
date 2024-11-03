import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

import '../../../global/widgets/drawer_widget.dart';
import '../../../routes/route_path.dart';
import '../widgets/dialogs.dart';

class CrearUsuarioView extends StatefulWidget {
  const CrearUsuarioView({super.key});

  @override
  _CrearUsuarioPageState createState() => _CrearUsuarioPageState();
}

class _CrearUsuarioPageState extends State<CrearUsuarioView> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _emailController = TextEditingController();

  bool _isLoading = false;

  Future<void> _crearUsuario() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true; // Mostrar el indicador de carga
      });

      final response = await http.post(
        Uri.parse('http://45.33.13.164/gateway/api/authentication/sign-up'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: '''{
          "username":"${_usernameController.text}",
          "password":"${_passwordController.text}",
          "name":"${_nameController.text}",
          "apellido":"${_apellidoController.text}",
          "telefono":"${_telefonoController.text}",
          "email":"${_emailController.text}"
        }''',
      );

      setState(() {
        _isLoading = false;
      });

      if (response.statusCode == 201) {
        String res = response.body;
        final responseData = json.decode(res); // Parsear la respuesta JSON
        final username = responseData['username'];
        Dialogs.showSuccessDialog(
            context, username); // Pasar el nombre de usuario al diálogo
      } else if (response.statusCode == 409) {
        Dialogs.showConflictDialog(context,
            'El nombre del usuario o correo electrónico ya existen, Por favor, intenta con otro');
      } else {
        Dialogs.showConflictDialog(context, 'Hubo un error desconocido');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 252, 251, 251),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
        context.go(RoutePath.loguin); 
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.go(RoutePath.loguin);
            },
            child: const Text(
              'Regresar a Iniciar Sesión',
              style: TextStyle(color: Color.fromARGB(255, 107, 90, 83), fontSize: 18),
            ),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Título del formulario
              const Center(
                child: Text(
                  'Crear Nuevo Usuario',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 97, 92, 81),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 15),
                    // Campos de entrada
                         _buildTextField(
                      controller: _usernameController,
                      label: 'Nombre de usuario',
                      icon: Icons.account_box,
                    ),
                    const SizedBox(height: 15),
                    _buildTextField(
                      controller: _nameController,
                      label: 'Nombre o nombres',
                      icon: Icons.account_box,
                    ),
                    const SizedBox(height: 15),
                    _buildTextField(
                      controller: _apellidoController,
                      label: 'Apellidos',
                      icon: Icons.account_box_outlined,
                    ),

                  

                    const SizedBox(height: 15),
                    _buildTextField(
                      controller: _telefonoController,
                      label: 'Teléfono',
                      icon: Icons.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingresa un número de teléfono';
                        }
                        // Validar que el número tenga exactamente 10 dígitos y solo contenga números
                        if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                          return 'No. de teléfono a 10 dígitos y solo números';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    _buildTextField(
                      controller: _emailController,
                      label: 'Correo',
                      icon: Icons.email,
                    ),
                    const SizedBox(height: 30),
                    _buildTextField(
                      controller: _passwordController,
                      label: 'Contraseña',
                      icon: Icons.lock,
                      obscureText: true,
                    ),  const SizedBox(height: 15),
                    _isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : ElevatedButton(
                            onPressed: _crearUsuario,
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              'Crear Usuario',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método auxiliar para construir campos de texto
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscureText = false,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Theme.of(context).primaryColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor ingresa un $label';
            }
            return null;
          },
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _apellidoController.dispose();
    _telefonoController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
