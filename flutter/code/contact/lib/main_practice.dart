import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppPractice());
}

class MyAppPractice extends StatelessWidget {
  const MyAppPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("금호동 3가"),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(Icons.menu),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
        body: SizedBox(),
      ),
    );
  }
}
