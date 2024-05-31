import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:topg/topg.dart';

import '../di/tksbp_di.dart';
import '../features/query/custom.dart';
import '../features/query/standart_query_list.dart';
import '../features/query/standart_query_menu.dart';
import 'app_router/app_router.dart';

@RoutePage()
class QueryScreen extends ConsumerWidget {
  const QueryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAdmin = true;
    return Scaffold(
      appBar: AppBar(
        leading: kIsWeb ? const SizedBox() : null,
        scrolledUnderElevation: 0,
        title: Text(S.of(context).registration),
        centerTitle: true,
        actions: [
          SettingsButton(
            onTap: () async {
              await context.router.push(const SettingsRoute());
            },
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isAdmin)
            const Expanded(
              child: StandardQueriesList(),
            ),
          if (isAdmin) ...[
            const StandardQueriesMenu(),
            const CustomQuery(),
          ],
        ],
      ),
    );
  }
}
