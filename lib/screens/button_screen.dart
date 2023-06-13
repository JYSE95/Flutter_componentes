import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
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
          title: Text('Tipos de Botones'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.blue,
                  child: TextButton(
                    child: Text("TextButton",
                        style: TextStyle(color: Color(0xff6ae9f9))),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.blue,
                  child: ElevatedButton(
                    child: Text("ElevatedButton",
                        style: TextStyle(color: Color(0xff6ae9f9))),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.blue,
                  child: OutlinedButton(
                    child: Text("OutlinedButton",
                        style: TextStyle(color: Color(0xff6ae9f9))),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("First Item"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Second Item"),
                          value: 2,
                        )
                      ],
                      onChanged: (_value) {
                        setState(() {
                          _value = _value;
                        });
                      },
                      hint: Text("Select item")),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: PopupMenuButton(
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text("First"),
                                value: 1,
                              ),
                              PopupMenuItem(
                                child: Text("Second"),
                                value: 2,
                              )
                            ])),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/textbutton.jpeg'),
                  Text("Se muestra el codigo"),
                  Text("de los distintos botones."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
