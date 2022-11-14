import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'page.dart';

void main() async{
  await Hive.initFlutter("hive_boxes");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New Project',
      theme: ThemeData(

        primarySwatch:Colors.indigo
      ),
      home: const MainPage(title: 'To Do Lists'),
    );
  }
}


