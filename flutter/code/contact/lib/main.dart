import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue, // 앱 전체의 AppBar 배경색을 보라색으로 설정
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("안녕"),
        ),
        body: Container(),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page)
            ],
          ),
        ),
      )
    );
  }
}
