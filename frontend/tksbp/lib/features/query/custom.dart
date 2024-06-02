// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';

class CustomQuery extends StatelessWidget {
  final TextEditingController controller;
  const CustomQuery({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    minLines: null,
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          '${S.of(context).sql} ${S.of(context).queryS.toLowerCase()}',
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
