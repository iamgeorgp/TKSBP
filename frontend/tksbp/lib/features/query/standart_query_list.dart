import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/tksbp_di.dart';
import 'standard_queries.dart';

class StandardQueriesList extends ConsumerWidget {
  final void Function(String query, String description)? onPressed;
  final bool shrinkWrap;
  const StandardQueriesList({
    required this.onPressed,
    this.shrinkWrap = false,
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
        return ListView.builder(
          shrinkWrap: shrinkWrap,
          itemCount: list.length,
          itemBuilder: (context, index) => Card(
            child: list[index].build(
              context,
              onPressed,
            ),
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
