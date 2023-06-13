import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  ListView1Screen({Key? key}) : super(key: key);
  var games = ["pou", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview tipo 1'),
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
