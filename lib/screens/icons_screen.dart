import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';
import 'package:fluttercomponentes/screens/drawer_screen.dart';

class IconsScreen extends StatefulWidget {
  const IconsScreen({super.key});
  _IconsScreenState createState() => _IconsScreenState();
}

class _IconsScreenState extends State<IconsScreen> {
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
          title: Text('Flutter  Iconos'),
        ),
        drawer: DrawerScreen(),
        body: TabBarView(
          children: <Widget>[
            GridView(
              //controlador del grid
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //Manejo nujmero de columnas
                  crossAxisCount: 4,
                  //espaciado entre las columnas
                  crossAxisSpacing: 15,
                  //Espaciado entre las filas
                  mainAxisSpacing: 5,
                  //alto de las columnas
                  mainAxisExtent: 90),
              children: [
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.list_alt, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.home, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.close, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.done, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.menu, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.add, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.star, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.key, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.downloading, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.favorite, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.cruelty_free, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.cookie, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.visibility, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.emoji_nature, color: Colors.white),
                ),
                Card(
                  color: AppTheme.primary,
                  child: Icon(Icons.face, color: Colors.white),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons.jpeg'),
                  Text("Aquí se muestra el ejemplo"),
                  Text("de Iconos"),
                ], //codeimg.io
              ),
            )
          ],
        ),
      ),
    );
  }
}
