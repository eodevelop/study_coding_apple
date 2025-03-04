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
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("Dialog"),
          onPressed: (){
            showDialog(context: context, builder: (context){
              return Dialog(child: Text('안녕'));
            });
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

