import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});
  _GridScreenState createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
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
          title: Text('Flutter GridView'),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView(
              //controlador del grid
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //Manejo nujmero de columnas
                  crossAxisCount: 1,
                  //espaciado entre las columnas
                  crossAxisSpacing: 1,
                  //Espaciado entre las filas
                  mainAxisSpacing: 1,
                  //alto de las columnas
                  mainAxisExtent: 100),
              children: [
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "6",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "7",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Text(
                    "8",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/gridview.jpeg'),
                  Text("Aquí se muestra el ejemplo"),
                  Text("de Gridview"),
                ], //codeimg.io
              ),
            )
          ],
        ),
      ),
    );
  }
}
