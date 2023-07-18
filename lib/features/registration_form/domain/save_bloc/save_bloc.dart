import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/generated/l10n.dart';
import '/core/domain/entities/user.dart';
import '/core/shared/error/failure.dart';
import '/core/data/repository/implementation/local_storage_repository.dart';

part 'save_event.dart';

part 'save_state.dart';

part 'save_bloc.freezed.dart';

class SaveBloc extends Bloc<SaveEvent, SaveState> {
  final LocalStorageRepository localStorageRepository;
  User user = User(addresses: []);

  SaveBloc({required this.localStorageRepository})
      : super(const SaveState.initial()) {
    on<SaveRegister>(_onSave);
  }

  _onSave(SaveRegister event, Emitter<SaveState> emit) async {
    try {
      emit(const SaveState.loading());
      final response = await localStorageRepository.setLocalUser(user: user);
      if (response) {

        emit(SaveState.done(message: S.current.successfulRegistration));
      } else {
        emit(SaveState.error(
            failure:
                Failure.noActionComplete(message: S.current.noSaveLocalData),
          ),
        );
      }
    } catch (e) {
      emit(SaveState.error(
          failure:
              Failure.noActionComplete(message: S.current.noSaveLocalData),
        ),
      );
    }
  }
}
