import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'widgets/bottom_nav_bar.dart';

void main() {
  runApp(SkylinkTVApp());
}

class SkylinkTVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skylink TV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      home: HomeScreen(),
    );
  }
}
