import 'package:flutter/material.dart';
import 'package:resepnusantara/screens/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Masakan Nusantara',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF191919),
        primaryColor: const Color(0xFFFDC912),
        fontFamily: 'Verdana',
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
