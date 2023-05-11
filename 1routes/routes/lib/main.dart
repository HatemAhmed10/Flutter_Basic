import 'package:flutter/material.dart';
import 'package:routes/presentation/screens/Home_Screen.dart';
import 'package:routes/presentation/screens/page1.dart';
import 'package:routes/presentation/screens/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/page1': (context) => page1(),
        '/page2': (context) => page2(),
      },
    );
  }
}
