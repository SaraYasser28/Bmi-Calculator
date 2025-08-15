import 'package:flutter/material.dart';
import 'pages/input_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color.fromARGB(255, 165, 0, 0),
          onPrimary: Colors.white,
          secondary: Color.fromARGB(255, 165, 0, 0),
          onSecondary: Colors.white,
          error: Colors.deepOrange,
          onError: Colors.white,
          surface: Colors.black,
          onSurface: Colors.white,
        ),
      ),
      home: const InputPage(),
    );
  }
}
