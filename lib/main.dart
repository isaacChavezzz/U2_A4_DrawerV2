import 'package:chavezdrawerv2/movies.dart';
import 'package:chavezdrawerv2/profile.dart';
import 'package:chavezdrawerv2/mensaje.dart';
import 'package:chavezdrawerv2/agenda.dart';
import 'package:chavezdrawerv2/redes.dart';

import 'package:flutter/material.dart';

import 'contact.dart';
import 'inicio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String inicio = Inicio.routeName;
  static const String profile = Profile.routeName;
  static const String movies = Movies.routeName;
  static const String contacts = Contact.routeName;
  static const String mensaje = Mensaje.routeName;
  static const String agenda = Agenda.routeName;
  static const String redes = Redes.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        inicio: (context) => Inicio(),
        profile: (context) => Profile(),
        movies: (context) => Movies(),
        contacts: (context) => Contact(),
        mensaje: (context) => Mensaje(),
        agenda: (context) => Agenda(),
        redes: (context) => Redes(),
      },
      home: Inicio(),
    );
  }
}
