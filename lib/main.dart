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
            color: Colors
                .white, // TODO: Figure out if there's a way to make this color dynamic
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black54.withOpacity(0.20),
                offset: Offset(2, 2),
                blurRadius: 2,
              ),
              Shadow(
                color: Colors.black54.withOpacity(0.80),
                offset: Offset(0, 2),
                blurRadius: 6,
              ),
            ],
          ),
          headline2: TextStyle(
            color: Color(0xFF232529),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
            color: Colors.white.withOpacity(
              0.50,
            ),
            fontSize: 18.0,
            shadows: [
              Shadow(
                color: Colors.black54.withOpacity(0.20),
                offset: Offset(2, 2),
                blurRadius: 2,
              ),
              Shadow(
                color: Colors.black.withOpacity(0.60),
                offset: Offset(0, 2),
                blurRadius: 6,
              ),
            ],
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
