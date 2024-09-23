import 'package:flutter/material.dart';
import '../pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            secondary: Colors.white, primary: Color.fromRGBO(255, 255, 255, 1)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}