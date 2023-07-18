import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/shared/error/failure.dart';
import '/core/shared/error/error_message.dart';
import '/features/registration_form/presentation/widgets/address_widget.dart';

part 'address_event.dart';

part 'address_state.dart';

part 'address_bloc.freezed.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  late List<AddressWidget> _addressWidgetList;

  AddressBloc() : super(const AddressState.initial(addressList: [])) {
    on<AddField>(_addAddressField);
    on<RemoveField>(_removeAddressField);
    on<Started>(_startList);
  }

  _startList(Started event, Emitter<AddressState> emit) {
    _addressWidgetList = [];
    _addressWidgetList.add(AddressWidget(
      nameField: '',
      mainField: true,
    ));
    emit(AddressState.addressList(
      addressList: _addressWidgetList,
    ));
  }

  _addAddressField(AddField event, Emitter<AddressState> emit) async {
    emit(const AddressState.loading());
    //Si encuentra un widget vacio, no deja agregar otro campo
    AddressWidget addressWidget = _addressWidgetList.firstWhere(
      (element) => element.isFill == false,
      orElse: () => AddressWidgetEmpty(),
    );
    if(addressWidget.empty!){
      _addressWidgetList.add(AddressWidget(
        nameField: '',
      ));
      emit(AddressState.addressList(
        addressList: _addressWidgetList,
      ));
    }else{
      emit(const AddressState.error(
        failure: Failure.noActionComplete(
          message: ErrorMessage.completeField,
        ),
      ));
    }
  }

  _removeAddressField(RemoveField event, Emitter<AddressState> emit) {
    emit(const AddressState.loading());
    if (_addressWidgetList.length > 1) {
      AddressWidget addressWidget = _addressWidgetList.firstWhere(
        (element) => element.nameField == event.nameField,
        orElse: () => AddressWidgetEmpty(),
      );
      if (addressWidget.empty! == false) {
        _addressWidgetList.remove(addressWidget);
        emit(AddressState.addressList(
          addressList: _addressWidgetList,
        ));
      }
    } else {
      emit(const AddressState.error(
        failure: Failure.noActionComplete(
          message: ErrorMessage.deleteNoAllow,
        ),
      ));
    }
  }
}
