class BaseResponse<T> {
  T? response;
  String? error;

  BaseResponse({
    this.response,
    this.error,
  });

  bool get isSuccess => error == null && response != null;
}
