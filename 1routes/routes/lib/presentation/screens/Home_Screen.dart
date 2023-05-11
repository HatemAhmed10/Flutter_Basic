import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.pushNamed(context, '/page1');
              },
              child: Text('Go to page1 Page'),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              },
              child: Text('Go to page2 Page'),
            ),
          ],
        ),
      ),
    );
  }
}
