import 'package:flutter/material.dart';
import 'screens/Welcome.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppConstants.fontFamily,
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
