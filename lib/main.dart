import 'package:flutter/material.dart';
import 'package:nytimes_app/src/onboarding/onboarding1.dart';

import 'src/onboarding/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Bookman',
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
