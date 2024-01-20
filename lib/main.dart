import 'package:flutter/material.dart';
import 'package:flutter_1/currency_converter_material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return Text("This is a test", textDirection: TextDirection.ltr);
    return const MaterialApp(home: CurrencyConverterMaterial());
  }
}
