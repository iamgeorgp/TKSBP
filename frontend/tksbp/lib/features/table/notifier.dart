import 'dart:io';
// import 'dart:convert';
// import 'dart:html' as html;

import 'package:csv/csv.dart';
import 'package:excel/excel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';

import '../../models/table/table_model.dart';
import '../../services/tksbp_service.dart';

class TableNotifier extends StateNotifier<TableModel> {
  final TKSBPService _service;
  TableNotifier({required TKSBPService service})
      : _service = service,
        super(const TableModel.loading());

  Future<List<String>> getParams(String query) async {
    final data = await _service.executeQuery(query);
    final resp = data.map(
      data: (value) {
        final list = <String>[];
        const csvConverter = CsvToListConverter();
        final table = csvConverter.convert(value.data, eol: '\n');

        for (var i = 1; i < table.length; i++) {
          list.add(table[i].first.toString());
        }

        return list;
      },
      error: (message) => <String>[],
    );
    return resp;
  }

  Future<void> executeQuery(String query) async {
    state = const TableModel.loading();
    // final data = await rootBundle.loadString('assets/100.csv');
    final data = await _service.executeQuery(query);
    data.when(
      data: (value) {
        const csvConverter = CsvToListConverter();
        final table = csvConverter.convert(value, eol: '\n');
        state = TableModel.table(table: table);
      },
      error: (message) {
        state = TableModel.error(message: message);
      },
    );
  }

  Future<void> downloadCsv() async {
    await state.maybeWhen(
      table: (table) async {
        if (kIsWeb) {
          // final text = StringBuffer();
          // for (final row in table) {
          //   text.writeAll(row, ',');
          //   text.write('\n');
          // }
          // const uuid = Uuid();
          // final base64Text = base64.encode(utf8.encode(text.toString()));

          // final uri = 'data:text/csv;charset=utf-8;base64,$base64Text';
          // html.AnchorElement()
          //   ..href =
          //       '${Uri.dataFromString(text.toString(), mimeType: 'text/csv', encoding: utf8)}'
          //   ..download = '${uuid.v4()}.csv'
          //   ..style.display = 'none'
          //   ..click();
          return;
        } else {
          const listToCsv = ListToCsvConverter();
          final data = listToCsv.convert(table);
          await Permission.storage.request();
          final downloadsFolder =
              defaultTargetPlatform == TargetPlatform.windows
                  ? (await path_provider.getDownloadsDirectory())
                  : (await path_provider.getExternalStorageDirectories(
                          type: path_provider.StorageDirectory.downloads))
                      ?.first;
          if (downloadsFolder == null) {
            return;
          }
          const uuid = Uuid();
          final path = '${downloadsFolder.path}/${uuid.v4()}.csv';
          final file = File(path);
          await file.create();
          await file.writeAsString(data);
        }
      },
      orElse: () {},
    );
  }

  Future<void> downloadXlsx() async {
    await state.maybeWhen(
      table: (table) async {
        final excel = Excel.createExcel();

        final sheetObject = excel['Data'];

        for (int i = 0; i < table.length; i++) {
          final row = <CellValue>[];
          for (final element in table[i]) {
            row.add(TextCellValue(element.toString()));
          }
          sheetObject.insertRowIterables(row, i);
        }

        final fileBytes = excel.save();
        if (!kIsWeb) {
          await Permission.storage.request();
          final downloadsFolder =
              defaultTargetPlatform == TargetPlatform.windows
                  ? (await path_provider.getDownloadsDirectory())
                  : (await path_provider.getExternalStorageDirectories(
                          type: path_provider.StorageDirectory.downloads))
                      ?.first;
          if (downloadsFolder == null || fileBytes == null) {
            return;
          }
          const uuid = Uuid();
          final excelPath = '${downloadsFolder.path}/${uuid.v4()}.xlsx';
          final fileExcel = File(excelPath);
          await fileExcel.create();
          await fileExcel.writeAsBytes(fileBytes);
        }
      },
      orElse: () {},
    );
  }
}
