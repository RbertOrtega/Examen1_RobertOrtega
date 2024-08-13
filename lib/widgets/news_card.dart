import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String details;

  NewsCard({required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(Icons.image),
        title: Text(title),
        subtitle: Text(details),
        trailing: Wrap(
          spacing: 12,
          children: <Widget>[
            ElevatedButton(onPressed: () {}, child: Text('Button1')),
            ElevatedButton(onPressed: () {}, child: Text('Button2')),
          ],
        ),
      ),
    );
  }
}
