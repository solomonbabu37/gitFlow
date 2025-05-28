import 'package:flutter/material.dart';
import 'package:gitflow/screens/home_screen.dart';

void main() {
  runApp(const GitFlowSimApp());
}

class GitFlowSimApp extends StatelessWidget {
  const GitFlowSimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitFlow Sim App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}