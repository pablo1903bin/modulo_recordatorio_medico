mixin ValidadorFieldMixin {

  bool isValidEmail(String email) {
    RegExp emailRegex =
        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
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

  String? isCheckboxValido(bool checked){
    return checked ? null : 'no valido';
  }

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
    
    final rfcPattern = RegExp(r'^[a-zA-ZÑ&]{3,4}\d{6}[A-Z0-9a-z]{3}$');

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