import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';
//Jueves 01/06/2023

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});
  _CheckboxScreenState createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool _value = false;
  bool _value2 = false;
  bool _value3 = false;
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
          title: Text('Flutter Checkbox'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Checkbox(
                    value: _value,
                    onChanged: (bool? value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Checkbox(
                    value: _value2,
                    onChanged: (bool? value) {
                      setState(() {
                        _value2 = value!;
                      });
                    },
                    activeColor: AppTheme.primary,
                  ),
                ),
                Container(
                    width: double.infinity,
                    height: 100,
                    child: Checkbox(
                      value: _value3,
                      onChanged: (bool? value) {
                        setState(() {
                          _value3 = value!;
                        });
                      },
                      activeColor: AppTheme.primary,
                      checkColor: Color(0xff155e68),
                    )),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/checkbox.jpeg'),
                  Text("Se muestra el codigo"),
                  Text("de checkbox."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
