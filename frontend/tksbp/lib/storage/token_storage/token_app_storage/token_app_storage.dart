import '../../storage.dart';
import '../token_storage.dart';

class TokenAppStorage implements TokenStorage {
  final Storage storage;

  static const String refreshTokenKey = 'refresh_token';
  static const String accessTokenKey = 'access_token';

  const TokenAppStorage(this.storage);

  @override
  Future<void> setAccessToken(String token) async {
    await storage.add(key: accessTokenKey, data: {accessTokenKey: token});
  }

  @override
  Future<void> setRefreshToken(String token) async {
    await storage.add(key: refreshTokenKey, data: {refreshTokenKey: token});
  }

  @override
  Future<String?> getAccessToken() async {
    final data = await storage.get(
      key: accessTokenKey,
    );

    if (data == null) {
      return null;
    }

    return data[accessTokenKey] as String?;
  }

  @override
  Future<String?> getRefreshToken() async {
    final data = await storage.get(
      key: refreshTokenKey,
    );

    if (data == null) {
      return null;
    }

    return data[refreshTokenKey] as String?;
  }

  @override
  Future<void> removeAccessToken() async {
    await storage.remove(
      key: accessTokenKey,
    );
  }

  @override
  Future<void> removeRefreshToken() async {
    await storage.remove(
      key: refreshTokenKey,
    );
  }

  @override
  Future<void> removeAll() async {
    await removeAccessToken();
    await removeRefreshToken();
  }
}
