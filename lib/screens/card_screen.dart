import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
          title: Text('Flutter Card'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: Container(
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Expanded(
                                child: Image.asset("assets/rep.jpg"),
                                flex: 2,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: ListTile(
                                      title: Text("Ready for it?"),
                                      subtitle: Text("Taylor Swift"),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          child: Text("PLAY"),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        TextButton(
                                          child: Text("ADD TO QUEUE"),
                                          onPressed: () {},
                                        ),
                                        SizedBox(
                                          width: 8,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            flex: 8,
                          ),
                        ],
                      ),
                    ),
                    elevation: 8,
                    margin: EdgeInsets.all(10),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Card con background color",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: AppTheme.primary,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("Codesinsider.com"),
                      ),
                      elevation: 8,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("Codesinsider.com"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.cyan,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("Codesinsider.com"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.cyan,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        //leading: Icon(Icons.music_note),
                        title: Text("Codeinsider.com"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.cyan,
                      margin: EdgeInsets.all(20),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                        child: ListTile(
                          title: Text("Codesinsider.com"),
                        ),
                        elevation: 8,
                        shadowColor: Colors.cyan,
                        margin: EdgeInsets.all(20),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("profe lo quiero mucho"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.cyan,
                      margin: EdgeInsets.all(20),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white)),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: ListTile(
                        title: Text("Gracias por existir <3"),
                      ),
                      elevation: 8,
                      shadowColor: Colors.cyan,
                      margin: EdgeInsets.all(20),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.cyan, width: 1)),
                    )),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Card(
                    child: Container(
                      height: 160,
                      width: 160,
                      child: Center(
                        child: ListTile(
                          title: Text("Jukilop"),
                        ),
                      ),
                    ),
                    elevation: 8,
                    shadowColor: Colors.green,
                    margin: EdgeInsets.all(20),
                    shape: CircleBorder(
                      side: BorderSide(width: 1, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/cardview.png'),
                  Text("Aquí se muestra el ejemplo"),
                  Text("de Card"),
                ], //codeimg.io
              ),
            )
          ],
        ),
      ),
    );
  }
}
