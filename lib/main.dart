import 'package:flutter/material.dart';
import 'package:portfolio/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.white,
        dividerColor: Colors.red,
      ),
      home: const HomePage(),
      routes: {
        HomePage.routeName: (BuildContext context) => const HomePage(),
      },
    );
  }
}
