import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/generated/l10n.dart';
import '/core/shared/utils/image_repository.dart';
import '/core/shared/utils/common_validators.dart';
import '/core/presentation/widgets/check_screen.dart';
import '/core/presentation/widgets/loading_screen.dart';
import '/core/presentation/widgets/date_form_field.dart';
import '/core/presentation/widgets/standard_button.dart';
import '/core/presentation/widgets/custom_form_field.dart';
import '/features/registration_form/domain/save_bloc/save_bloc.dart';
import '/features/registration_form/domain/address_bloc/address_bloc.dart';

@RoutePage()
class RegistrationPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddressBloc()..add(const Started()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AddressBloc, AddressState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => false,
              error: (failure) => failure.when(
                serverFailure: (msg) => errorWidget(msg: msg, context: context),
                noData: (msg) => errorWidget(msg: msg, context: context),
                noActionComplete: (msg) =>
                    errorWidget(msg: msg, context: context),
                noConnection: (msg) => errorWidget(msg: msg, context: context),
              ),
            ),
          ),
          BlocListener<SaveBloc, SaveState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => false,
              error: (failure) => failure.maybeWhen(
                orElse: () => errorWidget(msg: failure.message, context: context),
              ),
              done: (message){
                Future.delayed(const Duration(seconds: 2),(){
                  Navigator.pop(context);
                  showDialog(context: context, builder: (BuildContext context) {
                    return const CheckScreen();
                  });
                });
              },
              loading: (){
                showDialog(context: context, builder: (BuildContext context){
                  return const LoadingScreen();
                });
              }
            ),
          ),
        ],
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100.h,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 50.h),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageRepository.marvelLogo,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.w,
                    right: 15.w,
                    top: 30.h,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Wrap(
                      runSpacing: 12.h,
                      children: [
                        CustomTextFormField(
                          hintText: S.current.name,
                          iconOutline: const Icon(Icons.person_outline),
                          textInputType: TextInputType.name,
                          validator: CommonValidators.standardValidator,
                          onSave: (name) {
                            context.read<SaveBloc>().user.name = name;
                          },
                        ),
                        CustomTextFormField(
                          hintText: S.current.surname,
                          iconOutline:
                              const Icon(Icons.account_circle_outlined),
                          textInputType: TextInputType.name,
                          validator: CommonValidators.standardValidator,
                          onSave: (surname) {
                            context.read<SaveBloc>().user.lastName = surname;
                          },
                        ),
                        DateFormField(
                          hintText: S.current.birthdate,
                          iconOutline:
                              const Icon(Icons.calendar_month_outlined),
                          validator: CommonValidators.standardValidator,
                          onSave: (date) {
                            context.read<SaveBloc>().user.birthdate =
                                DateTime.parse(date!);
                          },
                        ),
                        BlocBuilder<AddressBloc, AddressState>(
                          buildWhen: (previous, current) => current.maybeWhen(
                            orElse: () => false,
                            initial: (l) => true,
                            addressList: (list) => true,
                          ),
                          builder: (context, state) => state.maybeWhen(
                            orElse: () => const SizedBox(),
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            addressList: (addressList) => Wrap(
                              runSpacing: 12.h,
                              children: addressList,
                            ),
                          ),
                        ),
                        StandardButton(
                          title: S.current.register,
                          onTap: () async {
                            if (_formKey.currentState!.validate()) {
                              Future.microtask(
                                () => _formKey.currentState!.save(),
                              ).whenComplete(() {
                                context
                                    .read<SaveBloc>()
                                    .add(const SaveRegister());
                              });
                            }
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void errorWidget({required String? msg, required BuildContext context}) {
    var snackBar = SnackBar(content: Text(msg!));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
