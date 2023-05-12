import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:register/presentation/screens/1register_Screen/register_view.dart';
import 'package:register/presentation/screens/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = auth.currentUser;
  String page = '';
  user == null ? page = "/Register" : page = "";
  runApp(MyApp(page: page));
}

class MyApp extends StatelessWidget {
  final String? page;

  MyApp({this.page});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/${page}',
      routes: {
        '/': (context) => HomePage(Token: "21"),
        '/Register': (context) => RegisterScreen(),
      },
    );
  }
}
