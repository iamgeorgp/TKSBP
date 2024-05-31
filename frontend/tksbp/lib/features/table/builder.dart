import 'package:flutter/material.dart';

class TableBuilder extends StatelessWidget {
  final List<List<dynamic>> data;
  final Widget Function(BuildContext context, List<List<Widget?>> table)
      builder;
  const TableBuilder({
    required this.data,
    required this.builder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final table = List.generate(
      data.length,
      (i) => List.generate(
        data[i].length,
        (j) => Text(
          data[i][j].toString(),
          textAlign: TextAlign.center,
        ),
      ),
    );
    return builder(context, table);
  }
}
