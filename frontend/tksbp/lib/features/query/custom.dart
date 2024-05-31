import 'package:flutter/material.dart';

class CustomQuery extends StatelessWidget {
  const CustomQuery({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              children: [
                const Text('Custom query'),
                Expanded(
                  child: TextField(
                    minLines: null,
                    maxLines: null,
                    expands: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Запрос',
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
