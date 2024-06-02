import 'package:flutter/services.dart';

class AuthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newText = newValue.text.replaceAll('"', '');
    final position =
        newValue.selection.start - newValue.text.length + newText.length;
    final newSelection = position < 0 ? 0 : position;
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newSelection),
    );
  }
}
