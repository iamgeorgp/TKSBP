enum ServiceExceptionType {
  phoneNotFound,
  incorrectCode,
}

abstract interface class ServiceException implements Exception {
  Object? exception;

  ServiceExceptionType? type;

  String message;

  ServiceException(this.message, this.exception);

  @override
  String toString() =>
      'ServiceException{exception: $exception, message: $message}';
}
