import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/domain/entities/user.dart';
import '/core/shared/error/failure.dart';
import '/core/data/repository/implementation/local_storage_repository.dart';

part 'drawer_event.dart';

part 'drawer_state.dart';

part 'drawer_bloc.freezed.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  final LocalStorageRepository localStorageRepository;

  DrawerBloc({required this.localStorageRepository})
      : super(const DrawerState.initial()) {
    on<DrawerEvent>(_getDataUser);
  }

  _getDataUser(DrawerEvent event, Emitter<DrawerState> emit) async {
    emit(const DrawerState.loading());
    final response = await localStorageRepository.getLocalUser();
    response.fold((left) {
      emit(DrawerState.error(failure: left));
    }, (right) {
      emit(DrawerState.data(user: right));
    });
  }
}
