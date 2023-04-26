import 'package:flutter/material.dart';
import 'package:parcial_2_jaime_jaramillo/utils/fibonacchi.dart';
import 'package:parcial_2_jaime_jaramillo/values/colors.dart';
import 'package:parcial_2_jaime_jaramillo/values/strings.dart';

class Button extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) updateValue;
  const Button({
    super.key,
    required this.controller,
    required this.updateValue,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  _alert(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                text0k,
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (widget.controller.text.trim().isEmpty) {
          _alert(message1);
          widget.updateValue("");
        } else if (widget.controller.text.contains('.') ||
            widget.controller.text.contains(',')) {
          _alert(message2);
          widget.updateValue("");
        } else if (int.parse(widget.controller.text) <= 0) {
          _alert(message3);
          widget.updateValue("");
        } else {
          Fibonacchi fibonacchi = Fibonacchi(int.parse(widget.controller.text));
          widget.updateValue(fibonacchi.getFibonacchi().toString());
          setState(() {});
        }
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(310, 48),
        backgroundColor: colorButtonBackground,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      child: const Text(
        textButton,
        style: TextStyle(
          fontSize: 18,
          color: colorButtonText,
        ),
      ),
    );
  }
}
