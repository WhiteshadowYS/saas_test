import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:saas/application/config/config.dart';
import 'package:saas/application/source/application/use_cases/application_init_use_case.dart';
import 'package:saas/application/utils/base_elements/base_bloc.dart';
import 'package:saas/application/utils/base_elements/base_event.dart';

part 'application_bloc.freezed.dart';
part 'application_event.dart';
part 'application_services.dart';
part 'application_state.dart';

@LazySingleton()
class ApplicationBloc extends BaseBloc<ApplicationEvent, ApplicationState> {
  // ignore: unused_field
  final ApplicationServices _services;

  static ApplicationBloc get instance => getIt<ApplicationBloc>();

  @factoryMethod
  ApplicationBloc.getItFactory(this._services) : super(ApplicationState.initial(), _services);
}
