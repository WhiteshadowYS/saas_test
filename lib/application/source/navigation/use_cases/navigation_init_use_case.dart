import 'package:saas/application/source/navigation/bloc/navigation_bloc.dart';
import 'package:saas/application/utils/base_elements/base_event.dart';

mixin NavigationInitUseCase on BaseEvent<NavigationState, NavigationBloc> {
  @override
  void execute(bloc, emit, covariant NavigationServices services) async {}
}
