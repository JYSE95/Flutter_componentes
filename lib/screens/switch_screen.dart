import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _value = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;

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
          title: Text('Flutter Switch'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.red[100],
                  child: Switch(
                    value: _value,
                    onChanged: (bool? value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                    activeColor: AppTheme.primary,
                  ),
                ),
                Container(
                  child: Switch(
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
                  child: Switch(
                    value: _value3,
                    onChanged: (bool? value) {
                      setState(() {
                        _value3 = value!;
                      });
                    },
                    activeColor: AppTheme.primary,
                    activeTrackColor: Colors.red[100],
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
                    child: Switch(
                  value: _value4,
                  onChanged: (value) {
                    setState(() {
                      _value4 = value;
                    });
                  },
                )),
                Container(
                    child: Switch(
                  value: _value5,
                  onChanged: (value) {
                    setState(() {
                      _value5 = value;
                    });
                  },
                  activeColor: Colors.red[100],
                  activeTrackColor: AppTheme.primary,
                  inactiveTrackColor: Colors.red[100],
                  inactiveThumbColor: AppTheme.primary,
                )),
                Container(
                    child: Switch(
                  value: _value6,
                  onChanged: (value) {
                    setState(() {
                      _value6 = value;
                    });
                  },
                  activeColor: AppTheme.primary,
                  activeTrackColor: Colors.red[100],
                  inactiveTrackColor: AppTheme.primary,
                  inactiveThumbColor: Colors.red[100],
                )),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/switch.jpeg'),
                  Text("Aquí se muestra el ejemplo"),
                  Text("de Switch"),
                ], //codeimg.io
              ),
            )
          ],
        ),
      ),
    );
  }
}
