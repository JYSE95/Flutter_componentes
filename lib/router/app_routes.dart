//Importacion
//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Listview Tipo 1",
      route: "listview1",
      screen: ListView1Screen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Listview Tipo 2",
      route: "listview2",
      screen: ListView2Screen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "TabBar y Tabview",
      route: "tabview",
      screen: const TabScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Flutter Botones",
      route: "button",
      screen: const ButtonScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "TextField",
      route: "textfield",
      screen: const TextFieldScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Alert Dialog",
      route: "alertdialog",
      screen: const AlertDialogScreen(),
    ),
    MenuOption(
        icon: Icons.cruelty_free,
        name: "Card",
        route: "cardview",
        screen: const CardScreen()),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Grid View",
      route: "gridview",
      screen: const GridScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Flutter Iconos",
      route: "icons",
      screen: const IconsScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Flutter Linear Progress",
      route: "linearprogress",
      screen: const LinearProgressScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Slider",
      route: "Slider",
      screen: const SliderScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Flutter CheckBox",
      route: "checkbox",
      screen: const CheckboxScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "RadioButton",
      route: "Radio Boton",
      screen: const RadioButtonScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Switch",
      route: "Switch",
      screen: const SwitchScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Circular Progress",
      route: "CircularProgress",
      screen: const CircularprogressScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "SnackBar",
      route: "SnackBar",
      screen: const SnackBarScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "Drawer",
      route: "Drawer",
      screen: const DrawerScreen(),
    ),
    MenuOption(
      icon: Icons.cruelty_free,
      name: "TextButton",
      route: "textbutton",
      screen: const TextButtonScreen(),
    ),
  ];

  //Creamos lista Map donde obtiene todas las rutas
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //Creamos lista Map para guardad las rutas actuales del proyecto
    //asignamos la ruta home
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    //Ciclo para recorrer todas las pestañas
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
