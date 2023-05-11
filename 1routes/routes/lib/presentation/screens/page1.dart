import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page1"),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.pop(context, '/page1');
              },
              child: Text('Go to HomePage Page'),
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
