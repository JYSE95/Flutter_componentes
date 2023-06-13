import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';
//Miércoles 31/05/2023

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  bool _value = false;
  double val = 1;
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
          title: Text('Flutter Slider'),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Slider(
                value: val,
                onChanged: (value) {
                  setState(() {
                    val = value;
                  });
                },
                min: 0,
                max: 10,
                activeColor: AppTheme.primary,
                inactiveColor: Colors.green[100],
                label: val.round().toString(),
                divisions: 10,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/slider.jpeg'),
                  Text("Aquí se muestra el ejemplo"),
                  Text("de Slider"),
                ], //codeimg.io
              ),
            )
          ],
        ),
      ),
    );
  }
}
