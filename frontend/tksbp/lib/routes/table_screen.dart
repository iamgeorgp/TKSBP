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
        title: Text(S.of(context).table),
        centerTitle: true,
        actions: [
          MenuAnchor(
            childFocusNode: _focusNode,
            menuChildren: [
              MenuItemButton(
                onPressed: () async {
                  await tableNotifier.downloadCsv();
                },
                child: const Icon(FontAwesomeIcons.fileCsv),
              ),
              MenuItemButton(
                onPressed: () async {
                  await tableNotifier.downloadXlsx();
                },
                child: const Icon(FontAwesomeIcons.fileExcel),
              ),
            ],
            builder: (context, controller, child) => IconButton(
              focusNode: _focusNode,
              onPressed: table.maybeMap(
                table: (_) => () {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                },
                orElse: () => null,
              ),
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
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (message) => Center(child: Text(message)),
      ),
    );
  }
}
