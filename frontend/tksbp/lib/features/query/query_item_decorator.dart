import 'package:flutter/material.dart';

class QueryItemDecorator extends StatelessWidget {
  final String description;
  final String query;
  final void Function(String query, String description)? onPressed;
  const QueryItemDecorator({
    required this.query,
    required this.description,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) => MenuItemButton(
        onPressed: () => onPressed?.call(query, description),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 4),
          child: ConstrainedBox(
            constraints: BoxConstraints.loose(
              Size(MediaQuery.of(context).size.width / 1.25, double.infinity),
            ),
            child: Text(
              description,
            ),
          ),
        ),
      );
}

class QuerySubItemDecorator extends StatelessWidget {
  final String description;
  final String query;
  final void Function(String query, String description)? onPressed;
  const QuerySubItemDecorator({
    required this.query,
    required this.description,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SubmenuButton(
        menuChildren: [],
        // onPressed: () => onPressed?.call(query, description),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 4),
          child: ConstrainedBox(
            constraints: BoxConstraints.loose(
              Size(MediaQuery.of(context).size.width / 1.25, double.infinity),
            ),
            child: Text(
              description,
            ),
          ),
        ),
      );
}
