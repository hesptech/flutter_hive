import 'package:flutter/material.dart';
import 'package:flutter_hive/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {

  // init hive
  await Hive.initFlutter();

  //var box = await Hive.openBox('mybox');
  await Hive.openBox('mybox');


  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
