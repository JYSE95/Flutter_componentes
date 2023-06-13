import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  ListView2Screen({Key? key}) : super(key: key);
  var games = ["Geometry Dash", "Subway Surfer", "Clash Royale", "GTA"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo 2'),
        ),
        body: ListView(
          children: [
            //spread
            ...games
                .map((games) => ListTile(
                    title: Text(games),
                    trailing:
                        Icon(Icons.arrow_forward_ios, color: Color(0xff1edce9)),
                    onTap: () {
                      var seleccion = games;
                      print(seleccion);
                    }))
                .toList(),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}
