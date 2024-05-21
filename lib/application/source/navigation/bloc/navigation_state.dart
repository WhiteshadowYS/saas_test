part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  const NavigationState._();

  factory NavigationState({AppRouter? router}) = _NavigationState;

  static NavigationState get initial {
    return NavigationState();
  }
}
