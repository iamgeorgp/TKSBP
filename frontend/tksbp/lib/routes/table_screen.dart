import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i18n/i18n.dart';

import '../di/tksbp_di.dart';
import '../features/table/builder.dart';
import '../features/table/view.dart';

final _focusNode = FocusNode(debugLabel: 'dowloadType');

enum DownloadType { csv, excel }

extension DownloadTypeX on DownloadType {
  IconData resolveIcon() {
    switch (this) {
      case DownloadType.csv:
        return FontAwesomeIcons.fileCsv;
      case DownloadType.excel:
        return FontAwesomeIcons.fileExcel;
    }
  }
}

@RoutePage()
class TableScreen extends ConsumerWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final table = ref.watch(TKSBPDi.tableNotifier);
    final tableNotifier = ref.watch(TKSBPDi.tableNotifier.notifier);
    return Scaffold(
      appBar: AppBar(
        leading: kIsWeb ? const SizedBox() : null,
        title: Text(S.of(context).authorization),
        centerTitle: true,
        actions: [
          MenuAnchor(
            childFocusNode: _focusNode,
            menuChildren: [
              for (final sortType in DownloadType.values)
                MenuItemButton(
                  onPressed: () async {
                    await tableNotifier.executeQuery(
                        'SELECT "c"."ContractID" AS "Contract_ID", "co"."CompanyID" AS "Company_ID", "co"."CompanyName" AS "Company_Name", "cl"."ClientID" AS "Client_ID", "cl"."ClientName" AS "Client_Name", "ts"."TypeServiceID" AS "Type_Service_ID", "ts"."TypeServiceName" AS "Type_Service_Name", "s"."ServiceID" AS "Service_ID", "s"."ServiceName" AS "Service_Name", "c"."SigningDate" AS "Signing_Date", "c"."StartDate" AS "Start_Date", "c"."EndDate" AS "End_Date", "c"."PayDate" AS "Pay_Date", "c"."Price" AS "Price", "m"."ManagerID" AS "Manager_ID", "m"."ManagerName" AS "Manager_Name", "m"."ManagerPhone" AS "ManagerPhone" FROM "Contracts" "c" JOIN "Company" "co" USING ("CompanyID") JOIN "Clients" "cl" USING ("ClientID") JOIN "TypeService" "ts" USING ("TypeServiceID") JOIN "Service" "s" USING ("ServiceID") JOIN "Managers" "m" USING ("ManagerID") WHERE "SigningDate" >= CURRENT_DATE - INTERVAL \'6 months\' ORDER BY "SigningDate" DESC;');
                  },
                  child: FaIcon(sortType.resolveIcon()),
                ),
            ],
            builder: (context, controller, child) => IconButton(
              focusNode: _focusNode,
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              icon: const Icon(Icons.download),
            ),
          ),
        ],
      ),
      body: table.when(
        table: (value) => TableBuilder(
          data: value,
          builder: (context, table) => TableView(table: table),
        ),
        loading: () => ElevatedButton(
          onPressed: () async {
            final notifier = ref.watch(TKSBPDi.tableNotifier.notifier);
            await notifier.executeQuery('');
          },
          child: Text('push me'),
        ),
      ),
    );
  }
}
