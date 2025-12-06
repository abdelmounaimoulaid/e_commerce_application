import 'package:e_commerce/screens/home/home.dart';
import 'package:e_commerce/screens/login/state/login_state.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
