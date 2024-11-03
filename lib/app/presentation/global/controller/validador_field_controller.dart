
import '../../../states/state_notifier.dart';

class ValidadorFieldController extends StateNotifier {
  ValidadorFieldController(super.state);

  String? validaUsuario(String? value) {
    value ??= '';

    if (value.isEmpty) {
      return 'Por favor ingresa tu nombre de usuario';
    }

    if (value.length < 5) {
      return 'El nombre de usuario debe tener más de 4 caracteres';
    }

    return null;
  }

  bool isValidEmail(String email) {
    RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  String? validaEmail(String? value) {
    value ??= '';

    if (value.isEmpty) {
      return 'Por favor ingresa tu email';
    }

    if (!isValidEmail(value)) {
      return 'Ingresa un email válido';
    }

    return null;
  }

  String? validaPassword(String? value) {
    value ??= '';

    if (value.isEmpty) {
      return 'Por favor ingresa tu password';
    }

    return null;
  }

  bool isFormValido(String email, String pass){
    return validaPassword(pass) == null && validaEmail(email) == null;
  }

  String? isCheckboxValido(bool checked){
    return checked ? null : 'no valido';
  }

  // Método para validar un números
  String? validaNumero(String? value) {
    value ??= '';

    if (value.isEmpty) {
      return 'Por favor ingresa un número';
    }

    return null;
  }

  String? validaRfc(String? value) {
    if (value == null || value.isEmpty) {
      return 'El RFC es obligatorio';
    }

    // Patrón de RFC para personas físicas y morales (13 caracteres)
    final rfcPattern = RegExp(r'^[A-ZÑ&]{3,4}\d{6}[A-Z0-9]{3}$');

    if (!rfcPattern.hasMatch(value)) {
      return 'El RFC no es válido';
    }

    return null;
 }

  String? validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor selecciona una fecha';
    }
    return null;
  }

}
