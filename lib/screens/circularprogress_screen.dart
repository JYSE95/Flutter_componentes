import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';
import 'package:fluttercomponentes/screens/drawer_screen.dart';

class CircularprogressScreen extends StatefulWidget {
  const CircularprogressScreen({super.key});
  _CircularprogressScreenState createState() => _CircularprogressScreenState();
}

class _CircularprogressScreenState extends State<CircularprogressScreen> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Ejemplo", icon: Icon(Icons.fact_check)),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Flutter Circular Progress'),
        ),
        drawer: DrawerScreen(),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                CircularProgressIndicator(),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 30),
                    child: CircularProgressIndicator(
                      color: AppTheme.primary,
                      value: 0.8,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: CircularProgressIndicator(
                      value: 0.8,
                      valueColor: new AlwaysStoppedAnimation<Color>(
                        AppTheme.primary,
                      ),
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: AppTheme.primary,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: AppTheme.primary,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 20),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: AppTheme.primary,
                      strokeWidth: 10,
                    )),
                CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  color: AppTheme.primary,
                  strokeWidth: 5,
                  value: value,
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/circular.jpeg'),
                  Text("Se muestra el codigo"),
                  Text("del Circular Progress"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
