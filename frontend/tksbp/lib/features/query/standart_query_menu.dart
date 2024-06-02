// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/tksbp_di.dart';
import 'standard_queries.dart';

final _focusNode = FocusNode(debugLabel: 'standard_queries');

class StandardQueriesMenu extends ConsumerWidget {
  final void Function(String query, String description)? onPressed;
  const StandardQueriesMenu({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => FutureBuilder<_Param>(
      future: _getParam(ref),
      builder: (context, snap) {
        final list = [
          const Towns3MonthQuery(),
          const TotalContractsHalfYearQuery(),
          const AverageMonthProfitQuery(),
          const ServiceRevenueForYearQuery(),
          const TopG10ClientsRevenueQuery(),
          const TopGManagersYearQuery(),
          DefiniteServiceSelectionQuery(snap.data?.first ?? []),
          ContractsWithDefiniteServiceSelectionQuery(snap.data?.second ?? []),
        ];
        return MenuAnchor(
          childFocusNode: _focusNode,
          menuChildren: [
            for (final element in list) element.build(context, onPressed),
          ],
          builder: (context, controller, child) => TextButton(
            onPressed: () {
              if (controller.isOpen) {
                controller.close();
              } else {
                controller.open();
              }
            },
            child: const Text('Выберите запрос'),
          ),
        );
      });

  Future<_Param> _getParam(WidgetRef ref) async {
    final queryNotifier = ref.watch(TKSBPDi.tableNotifier.notifier);
    final list1 = await queryNotifier.getParams(
        'SELECT "ServiceName" FROM "Service" GROUP BY "ServiceName"');
    final list2 = await queryNotifier.getParams(
        'SELECT "TypeServiceName" FROM "TypeService" GROUP BY "TypeServiceName"');
    return _Param(first: list1, second: list2);
  }
}

class _Param {
  final List<String> first;
  final List<String> second;
  _Param({
    required this.first,
    required this.second,
  });
}
