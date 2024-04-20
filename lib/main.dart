import 'package:flutter/material.dart';
import 'package:flutter_appandme_web/screens/member_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/index',
      routes: {
        '/index': (context) => const HomeScreen(),
        '/member': (context) => const MemberScreen(),
      },
      home: const HomeScreen(),
    );
  }
}
