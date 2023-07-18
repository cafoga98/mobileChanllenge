part of 'save_bloc.dart';

@freezed
class SaveState with _$SaveState {
  const factory SaveState.initial() = _Initial;
  const factory SaveState.done({required String message}) = _Done;
  const factory SaveState.error({required Failure failure}) = _Error;
  const factory SaveState.loading() = _Loading;
}
