import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminNotifier extends StateNotifier<bool> {
  AdminNotifier() : super(false);

  void setAdmin() => state = true;
}
