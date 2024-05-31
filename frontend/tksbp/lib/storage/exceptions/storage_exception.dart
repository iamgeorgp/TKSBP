abstract interface class StorageException implements Exception {
  String message;

  StorageException.name(this.message);

  @override
  String toString();
}
