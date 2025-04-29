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
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('앱임')),
        body: Container(
          width: double.infinity,
          height: 50,
          color: Colors.yellow,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page),
            ],
          ),
        ),
      ),
    );
  }
}
