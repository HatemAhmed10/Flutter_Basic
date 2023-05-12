import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String Token;
  HomePage({super.key, required this.Token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Token.toString()),
      ),
    );
  }
}
