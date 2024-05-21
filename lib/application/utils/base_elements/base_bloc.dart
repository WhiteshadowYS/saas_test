import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_event.dart';

class BaseBloc<Event extends BaseEvent<State, Bloc<Event, State>>, State> extends Bloc<Event, State> {
  BaseBloc(State initialState, Object services) : super(initialState) {
    on<Event>((event, emit) => event.execute(this, emit, services));
  }

  void addWith(
    Event event, {
    void Function(Object? data)? onDone,
    void Function(Object? data)? onError,
  }) {
    add(
      event
        ..setOnDone(onDone)
        ..setOnError(onError),
    );
  }

  @override
  void onEvent(Event event) async {
    try {
      final data = event.toString().split('.');

      print('[${data[0]}] => ${data[1]}');
    } catch (e) {
      print('$event');
    }

    super.onEvent(event);
  }

  @override
  void onTransition(Transition<Event, State> transition) {
    print(transition);
    super.onTransition(transition);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print(error);
    super.onError(error, stackTrace);
  }
}
