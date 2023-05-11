import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page2"),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text('Go to HomePage Page'),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.popAndPushNamed(context, '/page1');
              },
              child: Text('Go to page1 Page'),
            ),
          ],
        ),
      ),
    );
  }
}
