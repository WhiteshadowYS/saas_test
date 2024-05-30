part of 'application_bloc.dart';

@freezed
class ApplicationEvent extends BaseEvent<ApplicationState, ApplicationBloc> with _$ApplicationEvent {
  ApplicationEvent._();

  @With<ApplicationInitUseCase>()
  factory ApplicationEvent.init(Config config) = _ApplicationInitUseCase;
}
