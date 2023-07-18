class CommonValidators {
  CommonValidators._();

  static String? standardValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Campo requerido';
    }
    return null;
  }
}
