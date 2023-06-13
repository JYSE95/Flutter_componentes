import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});
  _SnackBarScreenState createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  var _selected = "";
  var _test = "Full Screen";
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
          title: Text('Flutter Snack Bar'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Hi! i am snackbar'),
                        backgroundColor: AppTheme.primary,
                      ));
                    },
                    child: Text("Show Snackbar"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Background Color Snackbar'),
                        backgroundColor: AppTheme.primary,
                      ));
                    },
                    child: Text("Background Color Snackbar"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Padding Snackbar'),
                        backgroundColor: AppTheme.primary,
                        padding: EdgeInsets.all(20),
                      ));
                    },
                    child: Text("Padding Snackbar"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Shape Snackbar'),
                        backgroundColor: AppTheme.primary,
                        shape: StadiumBorder(),
                      ));
                    },
                    child: Text("Shape Snackbar"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Behavior Snackbar'),
                        backgroundColor: AppTheme.primary,
                        behavior: SnackBarBehavior.floating,
                      ));
                    },
                    child: Text("Behavior Snackbar"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Hi! i am snackbar'),
                          backgroundColor: AppTheme.primary,
                          behavior: SnackBarBehavior.floating,
                          width: 200));
                    },
                    child: Text("Width Snackbar"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Margin Snackbar'),
                        backgroundColor: AppTheme.primary,
                        behavior: SnackBarBehavior.floating,
                        margin: EdgeInsets.all(50),
                      ));
                    },
                    child: Text("Margin Snackbar"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Elevation Snackbar'),
                        backgroundColor: AppTheme.primary,
                        behavior: SnackBarBehavior.floating,
                        margin: EdgeInsets.all(50),
                        elevation: 30,
                      ));
                    },
                    child: Text("Elevation Snackbar"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Duracion Snackbar'),
                        backgroundColor: AppTheme.primary,
                        behavior: SnackBarBehavior.floating,
                        duration: Duration(milliseconds: 10000),
                      ));
                    },
                    child: Text("Duracion Snackbar"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Action snackbar'),
                        backgroundColor: AppTheme.primary,
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(
                          label: 'Dismiss',
                          disabledTextColor: Colors.white,
                          textColor: Colors.white,
                          onPressed: () {
                            //Do whatever you want
                          },
                        ),
                      ));
                    },
                    child: Text("Action Snackbar"),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/snackbar.jpeg'),
                  Text("Se muestra el codigo"),
                  Text("del Snack Bar"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
