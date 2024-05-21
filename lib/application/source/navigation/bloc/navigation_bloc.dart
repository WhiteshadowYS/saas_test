import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:saas/application/router/app_router.dart';
import 'package:saas/application/source/navigation/use_cases/navigation_init_use_case.dart';
import 'package:saas/application/utils/base_elements/base_bloc.dart';
import 'package:saas/application/utils/base_elements/base_event.dart';

part 'navigation_bloc.freezed.dart';
part 'navigation_event.dart';
part 'navigation_services.dart';
part 'navigation_state.dart';

@LazySingleton()
class NavigationBloc extends BaseBloc<NavigationEvent, NavigationState> {
  // ignore: unused_field
  final NavigationServices _services;

  @factoryMethod
  NavigationBloc.getItFactory(this._services) : super(NavigationState.initial, _services);
}
