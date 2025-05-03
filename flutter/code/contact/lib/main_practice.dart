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
        body: Container(
          width: double.infinity,
          height: 150,
          alignment: Alignment.topCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/camera.png', width: 150),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "캐논 DSLR 100D (단렌즈, 충전기 16기가 SD 포함)",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "성동구 행당동, 끌올 10분 전",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text("210,000원"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end, // 우측 정렬 설정
                        children: [Icon(Icons.heart_broken), Text("4")],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
