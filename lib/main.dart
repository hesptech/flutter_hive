import 'package:flutter/material.dart';
import 'package:flutter_hive/pages/home_page.dart';
//import 'package:flutter_hive/home_page_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/animal_model.dart';

void main() async {

  // init hive
  await Hive.initFlutter();

  //var box = await Hive.openBox('mybox');
  await Hive.openBox('mybox');
  await Hive.openBox('keyedBox');
  await Hive.openBox('indexedBox');



  // Registering the adapter
  Hive.registerAdapter(AnimalAdapter());
  // Opening the box
  await Hive.openBox<Animal>('animalBox');


  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      //home: const HomePageTest(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
