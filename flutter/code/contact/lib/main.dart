import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

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
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  @override
  void initState() {
    super.initState();
    // getPermission(); // 요즘은 안티 패턴 사용자가 거절하게 되면 사용자가 직접 설치 해줘야한다.
  }

  getPermission() async {
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      print('허락됨');
    } else if (status.isDenied) {
      print('거절됨');
      Permission.contacts.request();
      openAppSettings();
    }
  }

  void addName(newName) {
    setState(() {
      name.add(newName);
      like.add(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("Dialog"),
          onPressed: (){
            showDialog(
              context: context, 
              builder: (context) => CustomDialog(addName:addName)
            );
          },
        ),
        appBar: AppBar(
            title: Text("연락처앱"),
            actions : [
              IconButton(onPressed: (){ getPermission(); }, icon : Icon(Icons.contacts))
            ]),
        body: ListView.builder(
            itemCount: name.length,
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
  CustomDialog({super.key, this.addName});
  final addName;
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
            addName(inputData.text);
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

