import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';
import 'package:fluttercomponentes/screens/drawer_screen.dart';

//Miércoles 31/05/2023

class LinearProgressScreen extends StatefulWidget {
  const LinearProgressScreen({super.key});
  _LinearProgressScreenState createState() => _LinearProgressScreenState();
}

class _LinearProgressScreenState extends State<LinearProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Ejemplo", icon: Icon(Icons.fact_check)),
              Tab(text: "Código", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Flutter Linear Progress'),
        ),
        drawer: DrawerScreen(),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(20),
                      child: LinearProgressIndicator(
                        value: 0.2,
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(20),
                      child: LinearProgressIndicator(
                        value: 0.4,
                        valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.deepOrange),
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(20),
                      child: LinearProgressIndicator(
                        value: 0.6,
                        valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.deepOrange),
                        backgroundColor: Colors.grey,
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(20),
                      child: LinearProgressIndicator(
                          value: 0.8,
                          backgroundColor: Colors.grey,
                          color: Colors.purple)),
                  Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.all(20),
                      child: LinearProgressIndicator(
                        value: 1.0,
                        backgroundColor: Colors.grey,
                        color: Colors.purple,
                        minHeight: 10,
                      )),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/linear.jpeg'),
                  Text("Aquí se muestra el ejemplo"),
                  Text("de Flutter Linear Progress"),
                ], //codeimg.io
              ),
            )
          ],
        ),
      ),
    );
  }
}
