import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Ejemplo", icon: Icon(Icons.list_alt)),
              Tab(text: "Código", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('TextField'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Container(padding: EdgeInsets.all(20), child: TextField()),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(enabled: false)),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(readOnly: true)),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Label Text",
                          labelText: "Username",
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Username",
                            helperText: "Enter username/email "),
                      )),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 20),
                            helperText: "Enter username/email "),
                      )),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Username",
                          helperText: "Enter username/email ",
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Username",
                          labelText: "Login",
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: new Theme(
                          data: new ThemeData(
                            primaryColor: Colors.orangeAccent,
                            primaryColorDark: Colors.orange,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Username",
                                labelText: "Login",
                                labelStyle:
                                    TextStyle(color: Colors.deepOrange)),
                          ))),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/textfield.jpeg'),
                  Text("Se muestra el codigo"),
                  Text("de Textfield."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
