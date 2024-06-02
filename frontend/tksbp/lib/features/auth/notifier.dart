import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/auth_model/auth_model.dart';
import '../../services/auth_service/auth_service.dart';
import '../../storage/users_storage.dart';

class AuthNotifier extends StateNotifier<AuthModel> {
  final AuthService _authService;
  AuthNotifier({required AuthService authService})
      : _authService = authService,
        super(const AuthModel.unauthorized());

  Future<AuthModel> login(User user) async {
    final auth = await _authService.login(user);
    await auth.maybeWhen(
      orElse: () {},
      nonValid: () async {
        state = const AuthModel.error(message: 'Ойойойо');
        await Future<dynamic>.delayed(const Duration(seconds: 2));
      },
    );
    state = auth;
    return auth;
  }

  Future<AuthModel> register(User user) async {
    final auth = await _authService.register(user);
    await auth.maybeWhen(
      orElse: () {},
      nonValid: () async {
        state = const AuthModel.error(message: 'Ойойойо');
        await Future<dynamic>.delayed(const Duration(seconds: 2));
      },
    );
    state = auth;
    return auth;
  }

  void leave() => state = const AuthModel.unauthorized();
}
