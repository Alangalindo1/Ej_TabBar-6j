import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplo Alan Galindo"),
          bottom: TabBar(tabs: [
            Tab(
              text: "Motos",
              icon: Icon(Icons.add_alert),
            ),
            Tab(
              text: "honda",
              icon: Icon(Icons.add_alarm),
            ),
            Tab(
              text: "Italika",
              icon: Icon(Icons.add_card),
            ),
            Tab(
              text: "Susuki",
              icon: Icon(Icons.add_home),
            )
          ]
              //textoicon
              ),
        ),
        body: TabBarView(
          children: const <Widget>[
            Center(
              child: Text(
                "Alerta",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                "opcion2",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                "opcion3",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            Center(
              child: Text(
                "opcion4",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
