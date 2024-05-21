part of 'navigation_bloc.dart';

@freezed
class NavigationEvent extends BaseEvent<NavigationState, NavigationBloc> with _$NavigationEvent {
  NavigationEvent._();

  @With<NavigationInitUseCase>()
  factory NavigationEvent.init() = _NavigationInitUseCase;
}
