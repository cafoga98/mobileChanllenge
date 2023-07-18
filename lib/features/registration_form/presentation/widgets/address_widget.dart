import 'package:doublevchallenge/features/registration_form/domain/save_bloc/save_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/core/shared/utils/common_validators.dart';
import '/core/presentation/widgets/custom_form_field.dart';
import '/features/registration_form/domain/address_bloc/address_bloc.dart';

class AddressWidget extends StatefulWidget {
  String nameField;
  final bool? mainField;
  bool? isFill;
  final bool? empty;

  AddressWidget({
    Key? key,
    required this.nameField,
    this.mainField = false,
    this.isFill = false,
    this.empty = false,
  }) : super(key: key);

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 10,
          child: CustomTextFormField(
            initialValue: widget.nameField.isNotEmpty ? widget.nameField : null,
            hintText: 'Dirección',
            textInputType: TextInputType.streetAddress,
            validator: CommonValidators.standardValidator,
            iconOutline: const Icon(Icons.pin_drop_outlined),
            onChanged: (value) {
              if (value != null && value.isNotEmpty) {
                setState(() {
                  widget.nameField = value;
                  widget.isFill = true;
                });
              } else {
                setState(() {
                  widget.isFill = false;
                });
              }
            },
            onSave: (address){
              context.read<SaveBloc>().user.addresses!.add(address!);
              print('Dirección: $address');
            },
          ),
        ),
        Flexible(
          flex: 2,
          child: widget.mainField!
              ? Container(
                  margin: EdgeInsets.only(left: 5.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueGrey.shade50,
                  ),
                  child: Center(
                    child: IconButton(
                      splashRadius: 30,
                      onPressed: () {
                        context.read<AddressBloc>().add(const AddField());
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Center(
                    child: IconButton(
                      splashRadius: 30,
                      onPressed: () {
                        context
                            .read<AddressBloc>()
                            .add(RemoveField(nameField: widget.nameField));
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 28.w,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}

class AddressWidgetEmpty extends AddressWidget {
  AddressWidgetEmpty({
    super.key,
    super.nameField = 'empty',
    super.empty = true,
  });
}
