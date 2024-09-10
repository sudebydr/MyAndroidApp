import 'package:flutter/material.dart';
import 'package:theme_board/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ThemeBoard',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}




  


