import 'package:flutter/material.dart';
import 'package:login/loginscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: login(),
     debugShowCheckedModeBanner: false);
  }
}
