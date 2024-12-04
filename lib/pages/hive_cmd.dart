import 'package:flutter/material.dart';


class HiveCmd extends StatelessWidget {
  const HiveCmd({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('//Initialize Hive'),
        Text('await Hive.initFlutter();'),
        Text('//Open Hive Box for Key-value entries'),
        Text("await Hive.openBox('keyedBox');"),
        Text('//Open Hive Box for Indexed Entries'),
        Text("await Hive.open('indexedBox');"),
        Text('//get a reference to the box'),
        Text('var keyBox = Hive.box(`keyedBox`);'),
        Text('//get and getAt to get data from box, passing key or index'),
        
        Text('CREATE'),
        Text('keyedBox.put(`dog`, `pit bull`);'),
        Text('READ'),
        Text("var dog = keyedBox.get(`dog`);"),
        Text("var firstAnimal = indexedBox.getAt(0);"),
        Text('UPDATE'),
        Text("keyedBox.putAt(`dog`, `German Shepherd`);"),
        Text('DELETE'),
        Text("keyedBox.delete(`bird`);"),


        Text(''),
        Text(''),
        Text(''),
        Text(''),
        Text(''),
        Text(''),



      ],
    );
  }
}