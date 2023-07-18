// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) noData,
    required TResult Function(String? message) noConnection,
    required TResult Function(String? message) noActionComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String? message)? noData,
    TResult? Function(String? message)? noConnection,
    TResult? Function(String? message)? noActionComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? noData,
    TResult Function(String? message)? noConnection,
    TResult Function(String? message)? noActionComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NoData value) noData,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(NoActionComplete value) noActionComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(NoActionComplete value)? noActionComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NoData value)? noData,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(NoActionComplete value)? noActionComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailure>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerFailure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerFailure extends ServerFailure {
  const _$ServerFailure({this.message = null}) : super._();

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) noData,
    required TResult Function(String? message) noConnection,
    required TResult Function(String? message) noActionComplete,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String? message)? noData,
    TResult? Function(String? message)? noConnection,
    TResult? Function(String? message)? noActionComplete,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? noData,
    TResult Function(String? message)? noConnection,
    TResult Function(String? message)? noActionComplete,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NoData value) noData,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(NoActionComplete value) noActionComplete,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(NoActionComplete value)? noActionComplete,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NoData value)? noData,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(NoActionComplete value)? noActionComplete,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends Failure {
  const factory ServerFailure({final String? message}) = _$ServerFailure;
  const ServerFailure._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$NoDataCopyWith(_$NoData value, $Res Function(_$NoData) then) =
      __$$NoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NoDataCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res, _$NoData>
    implements _$$NoDataCopyWith<$Res> {
  __$$NoDataCopyWithImpl(_$NoData _value, $Res Function(_$NoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoData(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoData extends NoData {
  const _$NoData({this.message = null}) : super._();

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'Failure.noData(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoData &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDataCopyWith<_$NoData> get copyWith =>
      __$$NoDataCopyWithImpl<_$NoData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) noData,
    required TResult Function(String? message) noConnection,
    required TResult Function(String? message) noActionComplete,
  }) {
    return noData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String? message)? noData,
    TResult? Function(String? message)? noConnection,
    TResult? Function(String? message)? noActionComplete,
  }) {
    return noData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? noData,
    TResult Function(String? message)? noConnection,
    TResult Function(String? message)? noActionComplete,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NoData value) noData,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(NoActionComplete value) noActionComplete,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(NoActionComplete value)? noActionComplete,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NoData value)? noData,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(NoActionComplete value)? noActionComplete,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData extends Failure {
  const factory NoData({final String? message}) = _$NoData;
  const NoData._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$NoDataCopyWith<_$NoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$NoConnectionCopyWith(
          _$NoConnection value, $Res Function(_$NoConnection) then) =
      __$$NoConnectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NoConnectionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NoConnection>
    implements _$$NoConnectionCopyWith<$Res> {
  __$$NoConnectionCopyWithImpl(
      _$NoConnection _value, $Res Function(_$NoConnection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoConnection(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoConnection extends NoConnection {
  const _$NoConnection({this.message = null}) : super._();

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'Failure.noConnection(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnection &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoConnectionCopyWith<_$NoConnection> get copyWith =>
      __$$NoConnectionCopyWithImpl<_$NoConnection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) noData,
    required TResult Function(String? message) noConnection,
    required TResult Function(String? message) noActionComplete,
  }) {
    return noConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String? message)? noData,
    TResult? Function(String? message)? noConnection,
    TResult? Function(String? message)? noActionComplete,
  }) {
    return noConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? noData,
    TResult Function(String? message)? noConnection,
    TResult Function(String? message)? noActionComplete,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NoData value) noData,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(NoActionComplete value) noActionComplete,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(NoActionComplete value)? noActionComplete,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NoData value)? noData,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(NoActionComplete value)? noActionComplete,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class NoConnection extends Failure {
  const factory NoConnection({final String? message}) = _$NoConnection;
  const NoConnection._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$NoConnectionCopyWith<_$NoConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoActionCompleteCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NoActionCompleteCopyWith(
          _$NoActionComplete value, $Res Function(_$NoActionComplete) then) =
      __$$NoActionCompleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NoActionCompleteCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NoActionComplete>
    implements _$$NoActionCompleteCopyWith<$Res> {
  __$$NoActionCompleteCopyWithImpl(
      _$NoActionComplete _value, $Res Function(_$NoActionComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoActionComplete(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoActionComplete extends NoActionComplete {
  const _$NoActionComplete({this.message = null}) : super._();

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'Failure.noActionComplete(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoActionComplete &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoActionCompleteCopyWith<_$NoActionComplete> get copyWith =>
      __$$NoActionCompleteCopyWithImpl<_$NoActionComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverFailure,
    required TResult Function(String? message) noData,
    required TResult Function(String? message) noConnection,
    required TResult Function(String? message) noActionComplete,
  }) {
    return noActionComplete(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverFailure,
    TResult? Function(String? message)? noData,
    TResult? Function(String? message)? noConnection,
    TResult? Function(String? message)? noActionComplete,
  }) {
    return noActionComplete?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverFailure,
    TResult Function(String? message)? noData,
    TResult Function(String? message)? noConnection,
    TResult Function(String? message)? noActionComplete,
    required TResult orElse(),
  }) {
    if (noActionComplete != null) {
      return noActionComplete(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NoData value) noData,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(NoActionComplete value) noActionComplete,
  }) {
    return noActionComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(NoActionComplete value)? noActionComplete,
  }) {
    return noActionComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NoData value)? noData,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(NoActionComplete value)? noActionComplete,
    required TResult orElse(),
  }) {
    if (noActionComplete != null) {
      return noActionComplete(this);
    }
    return orElse();
  }
}

abstract class NoActionComplete extends Failure {
  const factory NoActionComplete({final String? message}) = _$NoActionComplete;
  const NoActionComplete._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$NoActionCompleteCopyWith<_$NoActionComplete> get copyWith =>
      throw _privateConstructorUsedError;
}
