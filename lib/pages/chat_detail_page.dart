import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  final String name;
  final String image;
  final String message;

  // Constructor to accept the chat data
  ChatDetailPage(
      {required this.name, required this.image, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name), // Set the title to the chat's name
      ),
      body: Column(
        children: [
          // This is just a placeholder for chat details.
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage(image), // Use the passed profile image
                  radius: 30,
                ),
                SizedBox(width: 16),
                Text(
                  name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                '$message',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
