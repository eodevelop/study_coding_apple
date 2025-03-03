import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey,
            ),
          ),
          home: MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 3;
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  void incrementA () {
    a++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("Dialog"),
          onPressed: (){
            showDialog(
              context: context, 
              builder: (context) => CustomDialog(state: a, incrementA:incrementA)
            );
          },
        ),
        appBar: AppBar(title: Text("연락처앱"),),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (c, i){
              return ListTile(
                leading: Text(like[i].toString()),
                title: Text(name[i]),
                trailing: TextButton(onPressed: (){setState(() {
                  like[i]++;
                });}, child: Text('좋아요')),
              );
            })
      );
  }
}

class CustomDialog extends StatelessWidget {
  CustomDialog({super.key, this.state, this.incrementA});
  final state;
  final incrementA;
  final inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('연락처 등록'),
      content: TextField(
        controller: inputData,
        decoration: InputDecoration(
          hintText: '이름을 입력하세요'
        ),
      ),
      actions: [
        TextButton(
          child: Text('취소'),
          onPressed: (){ 
            Navigator.pop(context);
          },
        ),
        TextButton(
          child: Text('확인'),
          onPressed: (){
            incrementA();
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

