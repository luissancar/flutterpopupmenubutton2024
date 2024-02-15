import 'package:flutter/material.dart';
import 'package:flutterpopupmenubutton2024/pag01.dart';
import 'package:flutterpopupmenubutton2024/pag02.dart';
import 'package:flutterpopupmenubutton2024/pag03.dart';

void main() => runApp(MyApp()); // llama al primer widget que se ejecutará

/*
void main() {
    runApp(MyApp);
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // es el estilo de la app
      title: "Primera App", // nombre de la app
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {


  final List<Widget> _paginas = [Pag01(), Pag02(), Pag03()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // estructura básica de una app
      // estructura de una app movil
        appBar:  app(),

        body: Center(
          child: Container(
            color: Colors.green,
            child: Center(child: Text("Principal")),
          ),
        ));
  }



  AppBar app() {
    return AppBar(
      centerTitle: true,
      title: Text("Menu"),
      actions: [
        Theme(
          data: Theme.of(context).copyWith(
              textTheme: TextTheme().apply(bodyColor: Colors.black),
              dividerColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.white)),
          child: PopupMenuButton<int>(
            color: Colors.blue,
            itemBuilder: (context) => [
              PopupMenuItem<int>(value: 0, child: Text("Home")),
              PopupMenuItem<int>(value: 1, child: Text("Alarm")),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text("Add")
                    ],
                  )),
            ],
            onSelected: (item) => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => _paginas[item])),
          ),
        ),
      ],
    );
  }




}


