import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.serverFailure({@Default(null) final String? message}) = ServerFailure;

  const factory Failure.noData({@Default(null) final String? message}) = NoData;

  const factory Failure.noConnection({@Default(null) final String? message}) = NoConnection;

  const factory Failure.noActionComplete({@Default(null) final String? message}) = NoActionComplete;

}