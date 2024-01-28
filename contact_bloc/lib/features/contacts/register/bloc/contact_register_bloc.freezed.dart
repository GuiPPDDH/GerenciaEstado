// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactRegisterEvent {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactRegisterEventCopyWith<ContactRegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactRegisterEventCopyWith<$Res> {
  factory $ContactRegisterEventCopyWith(ContactRegisterEvent value,
          $Res Function(ContactRegisterEvent) then) =
      _$ContactRegisterEventCopyWithImpl<$Res, ContactRegisterEvent>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$ContactRegisterEventCopyWithImpl<$Res,
        $Val extends ContactRegisterEvent>
    implements $ContactRegisterEventCopyWith<$Res> {
  _$ContactRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactSaveImplCopyWith<$Res>
    implements $ContactRegisterEventCopyWith<$Res> {
  factory _$$ContactSaveImplCopyWith(
          _$ContactSaveImpl value, $Res Function(_$ContactSaveImpl) then) =
      __$$ContactSaveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$ContactSaveImplCopyWithImpl<$Res>
    extends _$ContactRegisterEventCopyWithImpl<$Res, _$ContactSaveImpl>
    implements _$$ContactSaveImplCopyWith<$Res> {
  __$$ContactSaveImplCopyWithImpl(
      _$ContactSaveImpl _value, $Res Function(_$ContactSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$ContactSaveImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactSaveImpl implements _ContactSave {
  const _$ContactSaveImpl({required this.name, required this.email});

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'ContactRegisterEvent.save(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactSaveImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactSaveImplCopyWith<_$ContactSaveImpl> get copyWith =>
      __$$ContactSaveImplCopyWithImpl<_$ContactSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email) save,
  }) {
    return save(name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email)? save,
  }) {
    return save?.call(name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _ContactSave implements ContactRegisterEvent {
  const factory _ContactSave(
      {required final String name,
      required final String email}) = _$ContactSaveImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ContactSaveImplCopyWith<_$ContactSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactRegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactRegisterStateInitial value) initial,
    required TResult Function(_ContactRegisterStateLoading value) loading,
    required TResult Function(_ContactRegisterStateSuccess value) success,
    required TResult Function(_ContactRegisterStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactRegisterStateInitial value)? initial,
    TResult? Function(_ContactRegisterStateLoading value)? loading,
    TResult? Function(_ContactRegisterStateSuccess value)? success,
    TResult? Function(_ContactRegisterStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactRegisterStateInitial value)? initial,
    TResult Function(_ContactRegisterStateLoading value)? loading,
    TResult Function(_ContactRegisterStateSuccess value)? success,
    TResult Function(_ContactRegisterStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactRegisterStateCopyWith<$Res> {
  factory $ContactRegisterStateCopyWith(ContactRegisterState value,
          $Res Function(ContactRegisterState) then) =
      _$ContactRegisterStateCopyWithImpl<$Res, ContactRegisterState>;
}

/// @nodoc
class _$ContactRegisterStateCopyWithImpl<$Res,
        $Val extends ContactRegisterState>
    implements $ContactRegisterStateCopyWith<$Res> {
  _$ContactRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContactRegisterStateInitialImplCopyWith<$Res> {
  factory _$$ContactRegisterStateInitialImplCopyWith(
          _$ContactRegisterStateInitialImpl value,
          $Res Function(_$ContactRegisterStateInitialImpl) then) =
      __$$ContactRegisterStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactRegisterStateInitialImplCopyWithImpl<$Res>
    extends _$ContactRegisterStateCopyWithImpl<$Res,
        _$ContactRegisterStateInitialImpl>
    implements _$$ContactRegisterStateInitialImplCopyWith<$Res> {
  __$$ContactRegisterStateInitialImplCopyWithImpl(
      _$ContactRegisterStateInitialImpl _value,
      $Res Function(_$ContactRegisterStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContactRegisterStateInitialImpl
    implements _ContactRegisterStateInitial {
  const _$ContactRegisterStateInitialImpl();

  @override
  String toString() {
    return 'ContactRegisterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactRegisterStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactRegisterStateInitial value) initial,
    required TResult Function(_ContactRegisterStateLoading value) loading,
    required TResult Function(_ContactRegisterStateSuccess value) success,
    required TResult Function(_ContactRegisterStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactRegisterStateInitial value)? initial,
    TResult? Function(_ContactRegisterStateLoading value)? loading,
    TResult? Function(_ContactRegisterStateSuccess value)? success,
    TResult? Function(_ContactRegisterStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactRegisterStateInitial value)? initial,
    TResult Function(_ContactRegisterStateLoading value)? loading,
    TResult Function(_ContactRegisterStateSuccess value)? success,
    TResult Function(_ContactRegisterStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContactRegisterStateInitial implements ContactRegisterState {
  const factory _ContactRegisterStateInitial() =
      _$ContactRegisterStateInitialImpl;
}

/// @nodoc
abstract class _$$ContactRegisterStateLoadingImplCopyWith<$Res> {
  factory _$$ContactRegisterStateLoadingImplCopyWith(
          _$ContactRegisterStateLoadingImpl value,
          $Res Function(_$ContactRegisterStateLoadingImpl) then) =
      __$$ContactRegisterStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactRegisterStateLoadingImplCopyWithImpl<$Res>
    extends _$ContactRegisterStateCopyWithImpl<$Res,
        _$ContactRegisterStateLoadingImpl>
    implements _$$ContactRegisterStateLoadingImplCopyWith<$Res> {
  __$$ContactRegisterStateLoadingImplCopyWithImpl(
      _$ContactRegisterStateLoadingImpl _value,
      $Res Function(_$ContactRegisterStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContactRegisterStateLoadingImpl
    implements _ContactRegisterStateLoading {
  const _$ContactRegisterStateLoadingImpl();

  @override
  String toString() {
    return 'ContactRegisterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactRegisterStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactRegisterStateInitial value) initial,
    required TResult Function(_ContactRegisterStateLoading value) loading,
    required TResult Function(_ContactRegisterStateSuccess value) success,
    required TResult Function(_ContactRegisterStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactRegisterStateInitial value)? initial,
    TResult? Function(_ContactRegisterStateLoading value)? loading,
    TResult? Function(_ContactRegisterStateSuccess value)? success,
    TResult? Function(_ContactRegisterStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactRegisterStateInitial value)? initial,
    TResult Function(_ContactRegisterStateLoading value)? loading,
    TResult Function(_ContactRegisterStateSuccess value)? success,
    TResult Function(_ContactRegisterStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContactRegisterStateLoading implements ContactRegisterState {
  const factory _ContactRegisterStateLoading() =
      _$ContactRegisterStateLoadingImpl;
}

/// @nodoc
abstract class _$$ContactRegisterStateSuccessImplCopyWith<$Res> {
  factory _$$ContactRegisterStateSuccessImplCopyWith(
          _$ContactRegisterStateSuccessImpl value,
          $Res Function(_$ContactRegisterStateSuccessImpl) then) =
      __$$ContactRegisterStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactRegisterStateSuccessImplCopyWithImpl<$Res>
    extends _$ContactRegisterStateCopyWithImpl<$Res,
        _$ContactRegisterStateSuccessImpl>
    implements _$$ContactRegisterStateSuccessImplCopyWith<$Res> {
  __$$ContactRegisterStateSuccessImplCopyWithImpl(
      _$ContactRegisterStateSuccessImpl _value,
      $Res Function(_$ContactRegisterStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContactRegisterStateSuccessImpl
    implements _ContactRegisterStateSuccess {
  const _$ContactRegisterStateSuccessImpl();

  @override
  String toString() {
    return 'ContactRegisterState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactRegisterStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactRegisterStateInitial value) initial,
    required TResult Function(_ContactRegisterStateLoading value) loading,
    required TResult Function(_ContactRegisterStateSuccess value) success,
    required TResult Function(_ContactRegisterStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactRegisterStateInitial value)? initial,
    TResult? Function(_ContactRegisterStateLoading value)? loading,
    TResult? Function(_ContactRegisterStateSuccess value)? success,
    TResult? Function(_ContactRegisterStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactRegisterStateInitial value)? initial,
    TResult Function(_ContactRegisterStateLoading value)? loading,
    TResult Function(_ContactRegisterStateSuccess value)? success,
    TResult Function(_ContactRegisterStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ContactRegisterStateSuccess implements ContactRegisterState {
  const factory _ContactRegisterStateSuccess() =
      _$ContactRegisterStateSuccessImpl;
}

/// @nodoc
abstract class _$$ContactRegisterStateErrorImplCopyWith<$Res> {
  factory _$$ContactRegisterStateErrorImplCopyWith(
          _$ContactRegisterStateErrorImpl value,
          $Res Function(_$ContactRegisterStateErrorImpl) then) =
      __$$ContactRegisterStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ContactRegisterStateErrorImplCopyWithImpl<$Res>
    extends _$ContactRegisterStateCopyWithImpl<$Res,
        _$ContactRegisterStateErrorImpl>
    implements _$$ContactRegisterStateErrorImplCopyWith<$Res> {
  __$$ContactRegisterStateErrorImplCopyWithImpl(
      _$ContactRegisterStateErrorImpl _value,
      $Res Function(_$ContactRegisterStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ContactRegisterStateErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactRegisterStateErrorImpl implements _ContactRegisterStateError {
  const _$ContactRegisterStateErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContactRegisterState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactRegisterStateErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactRegisterStateErrorImplCopyWith<_$ContactRegisterStateErrorImpl>
      get copyWith => __$$ContactRegisterStateErrorImplCopyWithImpl<
          _$ContactRegisterStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactRegisterStateInitial value) initial,
    required TResult Function(_ContactRegisterStateLoading value) loading,
    required TResult Function(_ContactRegisterStateSuccess value) success,
    required TResult Function(_ContactRegisterStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactRegisterStateInitial value)? initial,
    TResult? Function(_ContactRegisterStateLoading value)? loading,
    TResult? Function(_ContactRegisterStateSuccess value)? success,
    TResult? Function(_ContactRegisterStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactRegisterStateInitial value)? initial,
    TResult Function(_ContactRegisterStateLoading value)? loading,
    TResult Function(_ContactRegisterStateSuccess value)? success,
    TResult Function(_ContactRegisterStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContactRegisterStateError implements ContactRegisterState {
  const factory _ContactRegisterStateError(
      {required final String errorMessage}) = _$ContactRegisterStateErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ContactRegisterStateErrorImplCopyWith<_$ContactRegisterStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
