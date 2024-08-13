import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App CEUTEC'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('App CEUTEC'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Noticias'),
              onTap: () {
                Navigator.pushNamed(context, '/news');
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('El cambio de Monedas'),
              onTap: () {
                Navigator.pushNamed(context, '/converter');
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Lista de tareas'),
              onTap: () {
                Navigator.pushNamed(context, '/tasks');
              },
            ),
            ListTile(
              leading: Icon(Icons.podcasts),
              title: Text('Podcast'),
              onTap: () {
                Navigator.pushNamed(context, '/podcast');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Bienvenido a la App CEUTEC'),
      ),
    );
  }
}
