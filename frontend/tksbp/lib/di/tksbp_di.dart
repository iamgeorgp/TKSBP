import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/auth/notifier.dart';
import '../features/table/notifier.dart';
import '../models/auth_model/auth_model.dart';
import '../models/table/table_model.dart';
import '../services/auth_service/auth_service.dart';
import '../services/tksbp_service.dart';
import 'di.dart';

abstract class TKSBPDi {
  static final tableNotifier =
      StateNotifierProvider.autoDispose<TableNotifier, TableModel>(
    (ref) => TableNotifier(service: getIt.get<TKSBPService>()),
  );

  static final authNotifier =
      StateNotifierProvider.autoDispose<AuthNotifier, AuthModel>(
    (ref) => AuthNotifier(authService: getIt.get<AuthService>()),
  );
}
