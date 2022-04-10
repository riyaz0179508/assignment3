import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  // Exception Handling
  try {
    print("Start");
    int result = int.parse("5RR");
    print(result);
  } catch (e) {
    print(e);
  }
  print("finished");

  try {
    var result = 10 ~/ 3;
    print(result);
  } catch (e) {
    print(e);
  }
  print("finished");

  // Asyncronous Programming
  print("Let's");
  print("Start");

  myFunction() {
    Timer(Duration(seconds: 5), () => print("3rd"));
  }

  final f1 = Future(() => "Riyaz")
      .then((value) => print(value))
      .catchError((e) => print(e))
      .whenComplete(() => print("Finished"));


  Future.value(2).then((value) => print(value));
  Future.delayed(Duration(seconds: 1), ()=> print("Go to Next Page"));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
