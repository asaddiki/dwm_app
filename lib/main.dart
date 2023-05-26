import 'package:dwm_app/pages/counter.page.dart';
import 'package:dwm_app/pages/home.page.dart';
import 'package:dwm_app/pages/products.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DwmApp());
}

class DwmApp extends StatelessWidget {
  const DwmApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/counter": (context) => CounterPage(),
        "/products": (context) => ProductsPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 22, color: Colors.blue),
          bodyLarge: TextStyle(fontSize: 32, color: Colors.blue),
          bodySmall: TextStyle(fontSize: 18, color: Colors.blue),
        ),
        iconTheme: const IconThemeData(color: Colors.blue, size: 26),
      ),
    );
  }
}
