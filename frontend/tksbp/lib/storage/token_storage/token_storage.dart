abstract interface class TokenStorage {
  /// * Устанавливает access token
  Future<void> setAccessToken(String token);

  /// * Устанавливает refresh token
  Future<void> setRefreshToken(String token);

  /// * Получает access token

  Future<String?> getAccessToken();

  /// * Получает refresh token

  Future<String?> getRefreshToken();

  /// * Удаляет access token

  Future<void> removeAccessToken();

  /// * Удаляет refresh token

  Future<void> removeRefreshToken();

  /// * Удаляет все токены

  Future<void> removeAll();
}
