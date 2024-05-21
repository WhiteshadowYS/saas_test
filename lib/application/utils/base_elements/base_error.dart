class BaseError {
  final String error;
  final String? errorCode;

  BaseError({
    required this.error,
    this.errorCode,
  });

  String get readeableError {
    return error;
  }
}
