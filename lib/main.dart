import 'package:flutter/material.dart';
import 'package:parcial_2_jaime_jaramillo/values/colors.dart';
import 'package:parcial_2_jaime_jaramillo/values/strings.dart';
import 'package:parcial_2_jaime_jaramillo/widgets/button.dart';
import 'package:parcial_2_jaime_jaramillo/widgets/input_generic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = TextEditingController();
  String _fibonacciResult = "";

  void updateValue(String fibonacciResult) {
    setState(() {
      _fibonacciResult = fibonacciResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        backgroundColor: colorBackground,
        appBar: AppBar(
          title: const Text(textAppBar),
          centerTitle: true,
          elevation: 2,
          backgroundColor: colorAppBar,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                InputGeneric(
                    controller: controller, labelText: textInputGeneric),
                const SizedBox(height: 100),
                const Text(
                  textLabel,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 20),
                Text(_fibonacciResult, style: const TextStyle(fontSize: 22)),
                const SizedBox(height: 100),
                Button(controller: controller, updateValue: updateValue),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
