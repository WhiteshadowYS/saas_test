import 'package:saas/application/config/config.dart';
import 'package:saas/application/source/application/bloc/application_bloc.dart';
import 'package:saas/application/utils/base_elements/base_event.dart';

mixin ApplicationInitUseCase on BaseEvent<ApplicationState, ApplicationBloc> {
  Config get config;

  @override
  void execute(bloc, emit, covariant ApplicationServices services) async {
    await Future.delayed(Duration(seconds: 1));
    emit(ApplicationState.initialized(config));
  }
}
