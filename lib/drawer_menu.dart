import 'package:flutter/material.dart';

import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Row centrado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.inicio)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Row Izquierdo',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Row Derecho',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Row espacioEquitativamente',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.mensaje)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Row espacioalrededor',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.agenda)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Row espacio entre',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.redes)}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Row estirar',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.contacts)}),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/fondo.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Compilación Movil",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
