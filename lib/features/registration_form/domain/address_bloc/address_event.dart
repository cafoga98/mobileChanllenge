part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.started() = Started;
  const factory AddressEvent.addField() = AddField;
  const factory AddressEvent.removeField({required String nameField}) = RemoveField;
}
