import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/news_screen.dart';
import 'screens/task_list_screen.dart';
import 'screens/currency_converter_screen.dart';
import 'screens/podcast_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App CEUTEC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/news': (context) => NewsScreen(),
        '/tasks': (context) => TaskListScreen(),
        '/converter': (context) => CurrencyConverterScreen(),
        '/podcast': (context) => PodcastScreen(),
      },
    );
  }
}
