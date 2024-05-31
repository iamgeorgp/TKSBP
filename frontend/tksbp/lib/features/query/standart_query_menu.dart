import 'package:flutter/material.dart';

import 'standard_queries.dart';

final _focusNode = FocusNode(debugLabel: 'standard_queries');

class StandardQueriesMenu extends StatelessWidget {
  const StandardQueriesMenu({super.key});

  @override
  Widget build(BuildContext context) => MenuAnchor(
        childFocusNode: _focusNode,
        menuChildren: [
          for (final element in StandardQueries.values)
            element.build(context, (query, description) {}),
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
}
