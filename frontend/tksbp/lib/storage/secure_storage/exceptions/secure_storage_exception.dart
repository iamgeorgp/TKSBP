import '../../exceptions/storage_exception.dart';

class SecureStorageException implements StorageException {
  @override
  String message;

  SecureStorageException(this.message);

  @override
  String toString() => 'SecureStorageException{message: $message}';
}
