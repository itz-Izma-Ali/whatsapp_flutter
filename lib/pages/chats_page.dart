import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chat_detail_page.dart';
// Import the chat detail page

class ChatsPage extends StatelessWidget {
  // Define a list of chats with different titles, messages, and profile images
  final List<Map<String, String>> chats = [
    {
      'name': 'Muhammad Ali',
      'message': 'Hey, how are you?',
      'time': '12:00 PM',
      'image': 'assets/images/boy2.jpg' // Path to local asset image
    },
    {
      'name': 'Ushna',
      'message': 'Let\'s catch up later!',
      'time': '1:00 PM',
      'image': 'assets/images/girl1.jpg' // Another asset image
    },
    {
      'name': 'Izma',
      'message': 'Got the documents!',
      'time': '2:15 PM',
      'image': 'assets/images/girl2.jpg'
    },
    {
      'name': 'Ahmed',
      'message': 'See you at 5?',
      'time': '3:30 PM',
      'image': 'assets/images/boy4.jpg'
    },
    // Add more chat entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length, // Number of chats
      itemBuilder: (context, index) {
        // Get the current chat data
        final chat = chats[index];

        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(chat['image']!), // Use the AssetImage
          ),
          title: Text(chat['name']!), // Use the name from the chat data
          subtitle: Text(chat['message']!), // Use the message from the chat data
          trailing: Text(chat['time']!), // Use the time from the chat data
          onTap: () {
            // Navigate to the ChatDetailPage, passing the chat's name and image
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatDetailPage(
                  name: chat['name']!, // Pass the name
                  image: chat['image']!,
                  message: chat['message']! // Pass the image
                ),
              ),
            );
          },
        );
      },
    );
  }
}
