import '../../exceptions/service_exception.dart';

class AuthServiceException implements ServiceException {
  @override
  String message;

  @override
  Object? exception;

  @override
  ServiceExceptionType? type;

  AuthServiceException(this.message, this.exception, {this.type});

  @override
  String toString() =>
      'AuthServiceException{message: $message, exception: $exception}';
}
