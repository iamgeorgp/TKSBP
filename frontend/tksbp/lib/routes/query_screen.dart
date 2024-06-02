// ignore_for_file: use_build_context_synchronously

import 'dart:async';

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
class QueryScreen extends ConsumerStatefulWidget {
  const QueryScreen({super.key});

  @override
  ConsumerState<QueryScreen> createState() => _QueryScreenState();
}

class _QueryScreenState extends ConsumerState<QueryScreen> {
  late final TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final authModel = ref.watch(TKSBPDi.authNotifier);
    // final isAdmin = true;
    final tableNotifier = ref.watch(TKSBPDi.tableNotifier.notifier);
    return Scaffold(
      appBar: AppBar(
        leading: kIsWeb ? const SizedBox() : null,
        scrolledUnderElevation: 0,
        title: Text(S.of(context).chooseQuery),
        centerTitle: true,
        actions: [
          SettingsButton(
            onTap: () async {
              await context.router.push(const SettingsRoute());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...authModel.maybeMap(
              orElse: () => [
                const Center(
                  child: CircularProgressIndicator(),
                ),
              ],
              admin: (value) => [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                StandardQueriesMenu(
                  onPressed: (query, description) async {
                    _controller.text = query;
                  },
                ),
                CustomQuery(controller: _controller),
                const SizedBox(height: 15),
                SizedBox(
                  width: 600,
                  child: MainButton(
                    title: Text(
                      '${S.of(context).send} ${S.of(context).query.toLowerCase()}',
                      style: TextStyle(
                        fontSize: 24,
                        color: TopGType.regular.resolveColor(context),
                      ),
                    ),
                    onPressed: () async {
                      unawaited(context.router.push(const TableRoute()));
                      await tableNotifier.executeQuery(_controller.text);
                    },
                    type: TopGType.statistics,
                  ),
                ),
              ],
              regular: (value) => [
                StandardQueriesList(
                  shrinkWrap: true,
                  onPressed: (query, description) async {
                    unawaited(context.router.push(const TableRoute()));
                    await tableNotifier.executeQuery(query);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
