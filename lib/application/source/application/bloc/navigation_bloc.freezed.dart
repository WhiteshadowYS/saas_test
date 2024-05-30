// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigationInitUseCase value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigationInitUseCase value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigationInitUseCase value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res, NavigationEvent>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res, $Val extends NavigationEvent>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NavigationInitUseCaseCopyWith<$Res> {
  factory _$$_NavigationInitUseCaseCopyWith(_$_NavigationInitUseCase value,
          $Res Function(_$_NavigationInitUseCase) then) =
      __$$_NavigationInitUseCaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigationInitUseCaseCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$_NavigationInitUseCase>
    implements _$$_NavigationInitUseCaseCopyWith<$Res> {
  __$$_NavigationInitUseCaseCopyWithImpl(_$_NavigationInitUseCase _value,
      $Res Function(_$_NavigationInitUseCase) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigationInitUseCase extends _NavigationInitUseCase
    with NavigationInitUseCase {
  _$_NavigationInitUseCase() : super._();

  @override
  String toString() {
    return 'NavigationEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NavigationInitUseCase);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigationInitUseCase value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigationInitUseCase value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigationInitUseCase value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _NavigationInitUseCase extends NavigationEvent
    implements NavigationInitUseCase {
  factory _NavigationInitUseCase() = _$_NavigationInitUseCase;
  _NavigationInitUseCase._() : super._();
}

/// @nodoc
mixin _$NavigationState {
  AppRouter? get router => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
  @useResult
  $Res call({AppRouter? router});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? router = freezed,
  }) {
    return _then(_value.copyWith(
      router: freezed == router
          ? _value.router
          : router // ignore: cast_nullable_to_non_nullable
              as AppRouter?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_NavigationStateCopyWith(
          _$_NavigationState value, $Res Function(_$_NavigationState) then) =
      __$$_NavigationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppRouter? router});
}

/// @nodoc
class __$$_NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$_NavigationState>
    implements _$$_NavigationStateCopyWith<$Res> {
  __$$_NavigationStateCopyWithImpl(
      _$_NavigationState _value, $Res Function(_$_NavigationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? router = freezed,
  }) {
    return _then(_$_NavigationState(
      router: freezed == router
          ? _value.router
          : router // ignore: cast_nullable_to_non_nullable
              as AppRouter?,
    ));
  }
}

/// @nodoc

class _$_NavigationState extends _NavigationState {
  _$_NavigationState({this.router}) : super._();

  @override
  final AppRouter? router;

  @override
  String toString() {
    return 'NavigationState(router: $router)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationState &&
            (identical(other.router, router) || other.router == router));
  }

  @override
  int get hashCode => Object.hash(runtimeType, router);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      __$$_NavigationStateCopyWithImpl<_$_NavigationState>(this, _$identity);
}

abstract class _NavigationState extends NavigationState {
  factory _NavigationState({final AppRouter? router}) = _$_NavigationState;
  _NavigationState._() : super._();

  @override
  AppRouter? get router;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
