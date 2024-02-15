
import 'package:flutter/material.dart';


class Pag01 extends StatelessWidget {
  const Pag01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        color: Colors.yellowAccent,
        child: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}