import 'package:flutter/material.dart';

class TextButtonScreen extends StatefulWidget {
  const TextButtonScreen({super.key});
  _TextButtonScreenState createState() => _TextButtonScreenState();
}

class _TextButtonScreenState extends State<TextButtonScreen> {
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
          title: Text('Flutter Text Button'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                      child: Text("Text Button"),
                      onPressed: () {},
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: TextButton.icon(
                      icon: Icon(Icons.save),
                      label: Text("Icon Button"),
                      onPressed: () {},
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                      child: Text("Color Button"),
                      style: TextButton.styleFrom(
                        primary: Color(0xff27eae0),
                      ),
                      onPressed: () {},
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                      child: Text("Background Color Button"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff0decec),
                      ),
                      onPressed: () {},
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                      child: Text("Dissabled Button"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff0cd5bb),
                        onSurface: Colors.black,
                      ),
                      onPressed: null,
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                      child: Text("Elevation Button"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff6bdde5),
                        side: BorderSide(color: Color(0xff14efe4), width: 1),
                        elevation: 20,
                      ),
                      onPressed: () {},
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                      child: Text("Shape Text Button"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff6be5df),
                        side: BorderSide(color: Color(0xff14e8ef), width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: Color(0xff3a3939),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {},
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                      child: Text("Circle Button"),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xffe56b94),
                        side: BorderSide(color: Color(0xffef145d), width: 1),
                        elevation: 20,
                        minimumSize: Size(100, 50),
                        shadowColor: Color(0xff3a3939),
                        shape: CircleBorder(),
                      ),
                      onPressed: () {},
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                      child: Text("Text Button Padding"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xffe56b94),
                          side: BorderSide(color: Colors.deepOrange, width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: Colors.red,
                          padding: EdgeInsets.all(30)),
                      onPressed: () {},
                    )),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                      child: Text("Text Style Button"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xffe56b94),
                          side: BorderSide(color: Colors.deepOrange, width: 1),
                          elevation: 20,
                          minimumSize: Size(100, 50),
                          shadowColor: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 50),
                          textStyle: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      onPressed: () {},
                    )),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/textbutton.jpeg'),
                  Text("Se muestra el codigo"),
                  Text("del Text Button."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
