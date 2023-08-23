import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Controls the shadow depth
      margin: EdgeInsets.all(16), // Adds some margin around the card
      child: Column(
        children: [
          ListTile(
            title: Text('Card Title'),
            subtitle: Text('Card Subtitle'),
            leading: Icon(Icons.star), // Icon on the left
          ),
          Divider(), // Adds a horizontal line
          Padding(
            padding: EdgeInsets.all(16),
            child: Text('This is the content of the card.'),
          ),
        ],
      ),
    );
  }
}
