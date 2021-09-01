import 'package:flutter/material.dart';
import 'package:travel_app/pages/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF28A7C2),
        accentColor: Color(0xFFCFE8ED),
        backgroundColor: Color(0xFFF0F1F4),
        primaryTextTheme: TextTheme(
          headline1: TextStyle(
              color: Color(0xFF232529),
              fontSize: 32.0,
              fontWeight: FontWeight.bold),
          headline2: TextStyle(
              color: Color(0xFF232529),
              fontSize: 24,
              fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
