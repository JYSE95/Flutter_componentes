import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key});
  _AlertDialogScreenState createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Ejemplo", icon: Icon(Icons.list_alt)),
              Tab(text: "Codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Alert Dialog'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.cyan,
                    child: TextButton(
                      child: Text(
                        "CLICK AQUI",
                        style: TextStyle(color: Color(0xffefecec)),
                      ),
                      onPressed: () {
                        _showDialog(context);
                      },
                    ),
                  ),
                ]),
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/alertdialog.jpeg'),
                      Text("Se muestra el codigo"),
                      Text("de AlertDialog."),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('Bienvenido'),
            content: Text('¿Quieres aprender Flutter?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'SI',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'NO',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
