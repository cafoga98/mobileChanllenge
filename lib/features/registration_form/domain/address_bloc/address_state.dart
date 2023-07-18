part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial({required List<Widget> addressList}) = _Initial;
  const factory AddressState.addressList({required List<Widget> addressList}) = _AddressList;
  const factory AddressState.error({required Failure failure}) = _Error;
  const factory AddressState.loading() = _Loading;
}
