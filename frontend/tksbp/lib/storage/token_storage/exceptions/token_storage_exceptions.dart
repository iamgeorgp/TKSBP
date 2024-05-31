import '../../exceptions/storage_exception.dart';

class TokenStorageException implements StorageException {
  @override
  String message;

  TokenStorageException(this.message);

  @override
  String toString() => 'TokenStorageException{message: $message}';
}
