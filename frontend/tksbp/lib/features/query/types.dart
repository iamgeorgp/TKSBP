import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'query_item_decorator.dart';

abstract interface class QueryMenuItemInterface {
  /// Description of query menu item
  String get description;

  /// Widget for dropdown menu
  Widget build(BuildContext context,
      void Function(String query, String description)? onPressed);
}

abstract class QueryMenuItem implements QueryMenuItemInterface {
  const QueryMenuItem();

  @mustBeOverridden
  @override
  String get description => throw UnimplementedError();

  @mustBeOverridden
  String get query {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context,
          void Function(String query, String description)? onPressed) =>
      QueryItemDecorator(
        description: description,
        query: query,
        onPressed: onPressed,
      );
}

abstract class QuerySubMenuItem<T> implements QueryMenuItemInterface {
  const QuerySubMenuItem();

  @mustBeOverridden
  @override
  String get description => throw UnimplementedError();

  @mustBeOverridden
  String query(T parameter) {
    throw UnimplementedError();
  }

  @mustBeOverridden
  @override
  Widget build(BuildContext context,
      void Function(String query, String description)? onPressed) {
    throw UnimplementedError();
  }
}
