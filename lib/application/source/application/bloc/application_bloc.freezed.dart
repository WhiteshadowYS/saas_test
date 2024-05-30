// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationEvent {
  Config get config => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Config config) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Config config)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Config config)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationInitUseCase value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationInitUseCase value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationInitUseCase value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationEventCopyWith<ApplicationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationEventCopyWith<$Res> {
  factory $ApplicationEventCopyWith(
          ApplicationEvent value, $Res Function(ApplicationEvent) then) =
      _$ApplicationEventCopyWithImpl<$Res, ApplicationEvent>;
  @useResult
  $Res call({Config config});
}

/// @nodoc
class _$ApplicationEventCopyWithImpl<$Res, $Val extends ApplicationEvent>
    implements $ApplicationEventCopyWith<$Res> {
  _$ApplicationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
  }) {
    return _then(_value.copyWith(
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplicationInitUseCaseCopyWith<$Res>
    implements $ApplicationEventCopyWith<$Res> {
  factory _$$_ApplicationInitUseCaseCopyWith(_$_ApplicationInitUseCase value,
          $Res Function(_$_ApplicationInitUseCase) then) =
      __$$_ApplicationInitUseCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Config config});
}

/// @nodoc
class __$$_ApplicationInitUseCaseCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$_ApplicationInitUseCase>
    implements _$$_ApplicationInitUseCaseCopyWith<$Res> {
  __$$_ApplicationInitUseCaseCopyWithImpl(_$_ApplicationInitUseCase _value,
      $Res Function(_$_ApplicationInitUseCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
  }) {
    return _then(_$_ApplicationInitUseCase(
      null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config,
    ));
  }
}

/// @nodoc

class _$_ApplicationInitUseCase extends _ApplicationInitUseCase
    with ApplicationInitUseCase {
  _$_ApplicationInitUseCase(this.config) : super._();

  @override
  final Config config;

  @override
  String toString() {
    return 'ApplicationEvent.init(config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationInitUseCase &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationInitUseCaseCopyWith<_$_ApplicationInitUseCase> get copyWith =>
      __$$_ApplicationInitUseCaseCopyWithImpl<_$_ApplicationInitUseCase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Config config) init,
  }) {
    return init(config);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Config config)? init,
  }) {
    return init?.call(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Config config)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationInitUseCase value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationInitUseCase value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationInitUseCase value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _ApplicationInitUseCase extends ApplicationEvent
    implements ApplicationInitUseCase {
  factory _ApplicationInitUseCase(final Config config) =
      _$_ApplicationInitUseCase;
  _ApplicationInitUseCase._() : super._();

  @override
  Config get config;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationInitUseCaseCopyWith<_$_ApplicationInitUseCase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplicationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Config config) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Config config)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Config config)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationInitialState value) initial,
    required TResult Function(_ApplicationInitializedState value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationInitialState value)? initial,
    TResult? Function(_ApplicationInitializedState value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationInitialState value)? initial,
    TResult Function(_ApplicationInitializedState value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ApplicationInitialStateCopyWith<$Res> {
  factory _$$_ApplicationInitialStateCopyWith(_$_ApplicationInitialState value,
          $Res Function(_$_ApplicationInitialState) then) =
      __$$_ApplicationInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ApplicationInitialStateCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$_ApplicationInitialState>
    implements _$$_ApplicationInitialStateCopyWith<$Res> {
  __$$_ApplicationInitialStateCopyWithImpl(_$_ApplicationInitialState _value,
      $Res Function(_$_ApplicationInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ApplicationInitialState extends _ApplicationInitialState {
  _$_ApplicationInitialState() : super._();

  @override
  String toString() {
    return 'ApplicationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Config config) initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Config config)? initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Config config)? initialized,
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
    required TResult Function(_ApplicationInitialState value) initial,
    required TResult Function(_ApplicationInitializedState value) initialized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationInitialState value)? initial,
    TResult? Function(_ApplicationInitializedState value)? initialized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationInitialState value)? initial,
    TResult Function(_ApplicationInitializedState value)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ApplicationInitialState extends ApplicationState {
  factory _ApplicationInitialState() = _$_ApplicationInitialState;
  _ApplicationInitialState._() : super._();
}

/// @nodoc
abstract class _$$_ApplicationInitializedStateCopyWith<$Res> {
  factory _$$_ApplicationInitializedStateCopyWith(
          _$_ApplicationInitializedState value,
          $Res Function(_$_ApplicationInitializedState) then) =
      __$$_ApplicationInitializedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Config config});
}

/// @nodoc
class __$$_ApplicationInitializedStateCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$_ApplicationInitializedState>
    implements _$$_ApplicationInitializedStateCopyWith<$Res> {
  __$$_ApplicationInitializedStateCopyWithImpl(
      _$_ApplicationInitializedState _value,
      $Res Function(_$_ApplicationInitializedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
  }) {
    return _then(_$_ApplicationInitializedState(
      null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config,
    ));
  }
}

/// @nodoc

class _$_ApplicationInitializedState extends _ApplicationInitializedState {
  _$_ApplicationInitializedState(this.config) : super._();

  @override
  final Config config;

  @override
  String toString() {
    return 'ApplicationState.initialized(config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationInitializedState &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationInitializedStateCopyWith<_$_ApplicationInitializedState>
      get copyWith => __$$_ApplicationInitializedStateCopyWithImpl<
          _$_ApplicationInitializedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Config config) initialized,
  }) {
    return initialized(config);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Config config)? initialized,
  }) {
    return initialized?.call(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Config config)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationInitialState value) initial,
    required TResult Function(_ApplicationInitializedState value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationInitialState value)? initial,
    TResult? Function(_ApplicationInitializedState value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationInitialState value)? initial,
    TResult Function(_ApplicationInitializedState value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _ApplicationInitializedState extends ApplicationState {
  factory _ApplicationInitializedState(final Config config) =
      _$_ApplicationInitializedState;
  _ApplicationInitializedState._() : super._();

  Config get config;
  @JsonKey(ignore: true)
  _$$_ApplicationInitializedStateCopyWith<_$_ApplicationInitializedState>
      get copyWith => throw _privateConstructorUsedError;
}
