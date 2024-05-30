part of 'application_bloc.dart';

@freezed
class ApplicationState with _$ApplicationState {
  const ApplicationState._();

  factory ApplicationState.initial() = _ApplicationInitialState;
  factory ApplicationState.initialized(Config config) = _ApplicationInitializedState;
}
