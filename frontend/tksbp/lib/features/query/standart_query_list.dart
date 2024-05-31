import 'package:flutter/material.dart';

import 'standard_queries.dart';

class StandardQueriesList extends StatelessWidget {
  const StandardQueriesList({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: StandardQueries.values.length,
        itemBuilder: (context, index) => Card(
          child: StandardQueries.values[index].build(
            context,
            (query, description) {},
          ),
        ),
      );
}
