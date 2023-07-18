part of 'drawer_bloc.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState.initial() = _Initial;
  const factory DrawerState.data({required User user}) = _Data;
  const factory DrawerState.error({required Failure failure}) = _Error;
  const factory DrawerState.loading() = _Loading;
}
