// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactState {
  List<ContactEntity> get contacts => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactStateCopyWith<ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res, ContactState>;
  @useResult
  $Res call({List<ContactEntity> contacts, bool isLoading, String? error});
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res, $Val extends ContactState>
    implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactStateImplCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory _$$ContactStateImplCopyWith(
          _$ContactStateImpl value, $Res Function(_$ContactStateImpl) then) =
      __$$ContactStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContactEntity> contacts, bool isLoading, String? error});
}

/// @nodoc
class __$$ContactStateImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$ContactStateImpl>
    implements _$$ContactStateImplCopyWith<$Res> {
  __$$ContactStateImplCopyWithImpl(
      _$ContactStateImpl _value, $Res Function(_$ContactStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$ContactStateImpl(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ContactStateImpl implements _ContactState {
  const _$ContactStateImpl(
      {final List<ContactEntity> contacts = const [],
      this.isLoading = false,
      this.error})
      : _contacts = contacts;

  final List<ContactEntity> _contacts;
  @override
  @JsonKey()
  List<ContactEntity> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'ContactState(contacts: $contacts, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactStateImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_contacts), isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactStateImplCopyWith<_$ContactStateImpl> get copyWith =>
      __$$ContactStateImplCopyWithImpl<_$ContactStateImpl>(this, _$identity);
}

abstract class _ContactState implements ContactState {
  const factory _ContactState(
      {final List<ContactEntity> contacts,
      final bool isLoading,
      final String? error}) = _$ContactStateImpl;

  @override
  List<ContactEntity> get contacts;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ContactStateImplCopyWith<_$ContactStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
