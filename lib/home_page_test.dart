import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePageTest extends StatefulWidget {
  const HomePageTest({super.key});

  @override
  State<HomePageTest> createState() => _HomePageTestState();
}

class _HomePageTestState extends State<HomePageTest> {
  
  final _myBox = Hive.box('mybox');
  
  void writeData() {
    _myBox.put(1, 'Mitch'); 
  }

  void readData() {
    //print(_myBox.get(1));
  }
    
  void deletedata() {
    _myBox.delete(1);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: writeData,
              color: Colors.blue,
              child: const Text('Write'),
            ),
            MaterialButton(
              onPressed: readData,
              color: Colors.blue,
              child: const Text('Read'),
            ),
            MaterialButton(
              onPressed: deletedata,
              color: Colors.blue,
              child: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}