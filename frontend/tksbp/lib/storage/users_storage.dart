// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/auth_model/auth_model.dart';

class User {
  final String login;
  final String password;
  User({
    required this.login,
    required this.password,
  });

  @override
  String toString() => '$login"$password';
}

@singleton
class UsersStorage {
  final _usersKey = 'users';
  final _tokenKey = 'token';
  final _lastUser = 'lastUser';
  SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<AuthModel> login(User user) async {
    for (final admin in _admins) {
      if (user.login == admin.login && user.password == admin.password) {
        return const AuthModel.admin();
      }
    }

    final users = _sharedPreferences?.getStringList(_usersKey);
    if (users == null) {
      return const AuthModel.nonValid();
    }

    for (final element in users) {
      final login = element.split('"').first;
      final password = element.split('"').last;
      if (login == user.login && password == user.password) {
        await _sharedPreferences?.setString(_lastUser, user.toString());
        return const AuthModel.regular();
      }
    }

    return const AuthModel.nonValid();
  }

  Future<AuthModel> register(User user) async {
    for (final admin in _admins) {
      if (user.login == admin.login && user.password == admin.password) {
        return const AuthModel.nonValid();
      }
    }

    final users = _sharedPreferences?.getStringList(_usersKey) ?? [];
    for (final element in users) {
      final login = element.split('"').first;
      final password = element.split('"').last;
      if (user.login == login && user.password == password) {
        return const AuthModel.nonValid();
      }
    }
    users.add(user.toString());

    await _sharedPreferences?.setStringList(_usersKey, users);
    await _sharedPreferences?.setString(_lastUser, user.toString());
    return const AuthModel.regular();
  }
}

final List<_Admin> _admins = [
  _Admin(login: 'Andrew', password: 'Tate'),
  _Admin(login: 'Nicole', password: 'Mireku-dgima'),
  _Admin(login: 'admin', password: 'admin'),
];

class _Admin {
  final String login;
  final String password;
  _Admin({
    required this.login,
    required this.password,
  });
}
