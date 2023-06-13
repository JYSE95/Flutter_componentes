import 'package:flutter/material.dart';
import 'package:fluttercomponentes/screens/circularprogress_screen.dart';
import 'package:fluttercomponentes/screens/icons_screen.dart';
import 'package:fluttercomponentes/screens/linearprogress_screen.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppTheme.primary,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 40,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      "Yamilé Serrano",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text("Circular Progress"),
            leading: IconButton(
              icon: Icon(Icons.circle),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => CircularprogressScreen()));
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Linear Progress"),
            leading: IconButton(
              icon: Icon(Icons.linear_scale),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const LinearProgressScreen()));
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Icons"),
            leading: IconButton(
              icon: Icon(Icons.window),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const IconsScreen()));
            },
          )
        ],
      ),
    );
  }
}
