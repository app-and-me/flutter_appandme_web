import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/index',
      routes: {
        '/index': (context) => const HomeScreen(),
      },
      home: const HomeScreen(),
    );
  }
}
