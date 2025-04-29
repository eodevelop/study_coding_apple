import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppPractice());
}

class MyAppPractice extends StatelessWidget {
  const MyAppPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('초기 설정'));
  }
}
