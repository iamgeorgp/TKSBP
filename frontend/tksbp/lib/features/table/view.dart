import 'package:flutter/material.dart';
import 'package:topg/topg.dart';

class TableView extends StatelessWidget {
  final List<List<Widget?>> table;
  const TableView({
    required this.table,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: table.isEmpty ? 0 : table[0].length * 150,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: table.length,
            itemBuilder: (context, index) => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final cell in table[index])
                  TestTableCellWrapper(
                    child: cell,
                    isEven: index.isEven,
                  ),
              ],
            ),
          ),
        ),
      );
}

class TestTableCellWrapper extends StatelessWidget {
  final Widget? child;
  final TopGType type;
  final TopGType secondType;
  final bool isEven;
  const TestTableCellWrapper({
    required this.child,
    this.isEven = true,
    this.type = TopGType.highlight,
    this.secondType = TopGType.stress,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 100,
        width: 150,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(),
            color: isEven
                ? type.resolveColor(context)
                : secondType.resolveColor(context),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
            child: Center(child: child),
          ),
        ),
      );
}
