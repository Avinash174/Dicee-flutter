import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ),
  );
}

class DicePage extends StatefulWidget {
 DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber=1;
  int rightdicenumber=1;

  void changeDiceFace(){
    leftdiceNumber=Random().nextInt(6)+1;
    rightdicenumber=Random().nextInt(6)+1;

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image.asset('images/dice$leftdiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
               setState(() {
                 changeDiceFace();
               });
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
