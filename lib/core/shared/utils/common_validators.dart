import '/generated/l10n.dart';

class CommonValidators {
  CommonValidators._();

  static String? standardValidator(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.mandatoryField;
    }
    return null;
  }
}
