import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/admin/notifier.dart';
import '../features/table/notifier.dart';
import '../models/table/table_model.dart';
import '../services/tksbp_service.dart';
import 'di.dart';

abstract class TKSBPDi {
  static final tableNotifier =
      StateNotifierProvider.autoDispose<TableNotifier, TableModel>(
    (ref) => TableNotifier(service: getIt.get<TKSBPService>()),
  );

  static final admin = StateNotifierProvider.autoDispose<AdminNotifier, bool>(
    (ref) => AdminNotifier(),
  );
}
