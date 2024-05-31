// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_model.freezed.dart';

@freezed
class TableModel with _$TableModel {
  const factory TableModel.table({
    required List<List<dynamic>> table,
  }) = _TableModelTabel;

  const factory TableModel.loading() = _TableModelLoading;
}
