import 'package:flutter/material.dart';

class Pag02 extends StatelessWidget {
  const Pag02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alarm"),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text("Alarm"),
        ),
      ),
    );
  }
}