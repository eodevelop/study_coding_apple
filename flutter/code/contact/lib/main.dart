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
          backgroundColor: Colors.blue,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("앱임"),
        ),
        body: SizedBox(
          height: 150,
          width: 500,
          child: Row(
            children: [
              Image.asset(
                'assets/camera.png',
                width: 150,
                height: 150,
              ),
              Expanded(  // Column을 Expanded로 감싸기
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("캐논 DSLR 100D (단렌즈, 충전기 16기가 SD 포함)"),
                    Text("성동구 행당동 끌올 10분전"),
                    Text("210,000원"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_border),
                        Text("2"),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ),
      )
    );
  }
}
