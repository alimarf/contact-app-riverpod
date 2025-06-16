// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() cacheError,
    required TResult Function() networkError,
    required TResult Function() invalidInput,
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? cacheError,
    TResult? Function()? networkError,
    TResult? Function()? invalidInput,
    TResult? Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? cacheError,
    TResult Function()? networkError,
    TResult Function()? invalidInput,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(UnauthorizedFailure value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() cacheError,
    required TResult Function() networkError,
    required TResult Function() invalidInput,
    required TResult Function() unauthorized,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? cacheError,
    TResult? Function()? networkError,
    TResult? Function()? invalidInput,
    TResult? Function()? unauthorized,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? cacheError,
    TResult Function()? networkError,
    TResult Function()? invalidInput,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(UnauthorizedFailure value) unauthorized,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure({required final String message}) =
      _$ServerFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheFailureImpl implements CacheFailure {
  const _$CacheFailureImpl();

  @override
  String toString() {
    return 'Failure.cacheError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() cacheError,
    required TResult Function() networkError,
    required TResult Function() invalidInput,
    required TResult Function() unauthorized,
  }) {
    return cacheError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? cacheError,
    TResult? Function()? networkError,
    TResult? Function()? invalidInput,
    TResult? Function()? unauthorized,
  }) {
    return cacheError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? cacheError,
    TResult Function()? networkError,
    TResult Function()? invalidInput,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(UnauthorizedFailure value) unauthorized,
  }) {
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
  }) {
    return cacheError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure() = _$CacheFailureImpl;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl();

  @override
  String toString() {
    return 'Failure.networkError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() cacheError,
    required TResult Function() networkError,
    required TResult Function() invalidInput,
    required TResult Function() unauthorized,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? cacheError,
    TResult? Function()? networkError,
    TResult? Function()? invalidInput,
    TResult? Function()? unauthorized,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? cacheError,
    TResult Function()? networkError,
    TResult Function()? invalidInput,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(UnauthorizedFailure value) unauthorized,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure() = _$NetworkFailureImpl;
}

/// @nodoc
abstract class _$$InvalidInputFailureImplCopyWith<$Res> {
  factory _$$InvalidInputFailureImplCopyWith(_$InvalidInputFailureImpl value,
          $Res Function(_$InvalidInputFailureImpl) then) =
      __$$InvalidInputFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidInputFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$InvalidInputFailureImpl>
    implements _$$InvalidInputFailureImplCopyWith<$Res> {
  __$$InvalidInputFailureImplCopyWithImpl(_$InvalidInputFailureImpl _value,
      $Res Function(_$InvalidInputFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidInputFailureImpl implements InvalidInputFailure {
  const _$InvalidInputFailureImpl();

  @override
  String toString() {
    return 'Failure.invalidInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidInputFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() cacheError,
    required TResult Function() networkError,
    required TResult Function() invalidInput,
    required TResult Function() unauthorized,
  }) {
    return invalidInput();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? cacheError,
    TResult? Function()? networkError,
    TResult? Function()? invalidInput,
    TResult? Function()? unauthorized,
  }) {
    return invalidInput?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? cacheError,
    TResult Function()? networkError,
    TResult Function()? invalidInput,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (invalidInput != null) {
      return invalidInput();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(UnauthorizedFailure value) unauthorized,
  }) {
    return invalidInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
  }) {
    return invalidInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    required TResult orElse(),
  }) {
    if (invalidInput != null) {
      return invalidInput(this);
    }
    return orElse();
  }
}

abstract class InvalidInputFailure implements Failure {
  const factory InvalidInputFailure() = _$InvalidInputFailureImpl;
}

/// @nodoc
abstract class _$$UnauthorizedFailureImplCopyWith<$Res> {
  factory _$$UnauthorizedFailureImplCopyWith(_$UnauthorizedFailureImpl value,
          $Res Function(_$UnauthorizedFailureImpl) then) =
      __$$UnauthorizedFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnauthorizedFailureImpl>
    implements _$$UnauthorizedFailureImplCopyWith<$Res> {
  __$$UnauthorizedFailureImplCopyWithImpl(_$UnauthorizedFailureImpl _value,
      $Res Function(_$UnauthorizedFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedFailureImpl implements UnauthorizedFailure {
  const _$UnauthorizedFailureImpl();

  @override
  String toString() {
    return 'Failure.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() cacheError,
    required TResult Function() networkError,
    required TResult Function() invalidInput,
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function()? cacheError,
    TResult? Function()? networkError,
    TResult? Function()? invalidInput,
    TResult? Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? cacheError,
    TResult Function()? networkError,
    TResult Function()? invalidInput,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cacheError,
    required TResult Function(NetworkFailure value) networkError,
    required TResult Function(InvalidInputFailure value) invalidInput,
    required TResult Function(UnauthorizedFailure value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cacheError,
    TResult? Function(NetworkFailure value)? networkError,
    TResult? Function(InvalidInputFailure value)? invalidInput,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cacheError,
    TResult Function(NetworkFailure value)? networkError,
    TResult Function(InvalidInputFailure value)? invalidInput,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedFailure implements Failure {
  const factory UnauthorizedFailure() = _$UnauthorizedFailureImpl;
}
