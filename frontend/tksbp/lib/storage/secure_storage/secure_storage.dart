import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../storage.dart';

@LazySingleton(as: Storage)
class SecureStorage implements Storage {
  final FlutterSecureStorage storage;

  SecureStorage(this.storage);

  @override
  Future<void> add({
    required String key,
    required Map<String, dynamic> data,
  }) async {
    await storage.write(key: key, value: jsonEncode(data));
  }

  @override
  Future<Map<String, dynamic>?> get({
    required String key,
    String? value,
    String? by,
  }) async {
    final data = await storage.read(key: key);

    if (data == null) {
      return null;
    }

    return jsonDecode(data) as Map<String, dynamic>?;
  }

  @override
  Future<List<Map<String, dynamic>>> getAll({required String key}) {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<void> remove({
    required String key,
    String? value,
    String? by,
  }) async {
    await storage.delete(key: key);
  }

  @override
  Future<void> replace({
    required String key,
    required String value,
    required String by,
    required Map<String, dynamic> replaceData,
  }) {
    // TODO: implement replace
    throw UnimplementedError();
  }

  @override
  Future<void> replaceAll({
    required String key,
    required List<Map<String, dynamic>> data,
  }) {
    // TODO: implement replaceAll
    throw UnimplementedError();
  }
}
