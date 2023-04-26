import 'package:flutter/material.dart';
import 'package:parcial_2_jaime_jaramillo/values/colors.dart';

class InputGeneric extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  const InputGeneric({
    super.key,
    required this.controller,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      cursorColor: colorCursor,
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: colorLabelAndBorderInputText),
        floatingLabelStyle:
            const TextStyle(color: colorLabelAndBorderInputTextFocus),
        filled: true,
        fillColor: colorInputFill,
        helperText: "",
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: colorLabelAndBorderInputText),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: colorLabelAndBorderInputTextFocus, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}
