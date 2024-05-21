import 'package:flutter_bloc/flutter_bloc.dart';

class BaseEvent<State, BLoC extends Bloc<dynamic, State>> {
  void Function(Object? data)? _onDoneCallback;
  void Function(Object? data)? _onErrorCallback;

  void setOnDone(void Function(Object? data)? callback) => _onDoneCallback = callback;
  void setOnError(void Function(Object? data)? callback) => _onErrorCallback = callback;

  void onDone(covariant Object? data) => _onDoneCallback?.call(data);
  void onError(covariant Object? data) => _onErrorCallback?.call(data);

  void execute(BLoC bloc, dynamic emit, covariant Object services) {}
}
