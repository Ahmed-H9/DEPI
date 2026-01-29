import 'package:flutter/material.dart';
import 'package:for_tasks/first_task/view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Task_1()
    );
  }
}
