import 'package:flutter/material.dart';

class PodcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcast'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Song'),
              subtitle: Text('Card content'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.play_arrow),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.skip_next),
                onPressed: () {},
              ),
            ],
          ),
          Slider(
            value: 0.5,
            onChanged: (value) {},
          ),
          CheckboxListTile(
            title: Text('Repeat'),
            value: true,
            onChanged: (newValue) {},
          ),
          CheckboxListTile(
            title: Text('Shuffle'),
            value: false,
            onChanged: (newValue) {},
          ),
        ],
      ),
    );
  }
}
