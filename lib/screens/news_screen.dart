import 'package:flutter/material.dart';
import '../widgets/news_card.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOTICIAS'),
      ),
      body: ListView(
        children: [
          NewsCard(
            title: 'Title',
            details: 'Details',
          ),
          NewsCard(
            title: 'Title 2',
            details: 'Details 2',
          ),
        ],
      ),
    );
  }
}
