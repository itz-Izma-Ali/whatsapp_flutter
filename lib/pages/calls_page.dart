import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  // Define a list of calls with different names, call times, and profile images
  final List<Map<String, String>> calls = [
    {
      'name': 'Muhammad Ali',
      'time': 'Yesterday, 3:15 PM',
      'image': 'assets/images/boy2.jpg', // Path to local asset image
      'status': 'Incoming Call',
    },
    {
      'name': 'Ushna',
      'time': 'Today, 1:00 PM',
      'image': 'assets/images/girl1.jpg',
      'status': 'Missed Call',
    },
    {
      'name': 'Izma',
      'time': 'Today, 2:15 PM',
      'image': 'assets/images/girl2.jpg',
      'status': 'Outgoing Call',
    },
    {
      'name': 'Ahmed',
      'time': 'Today, 4:30 PM',
      'image': 'assets/images/boy4.jpg',
      'status': 'Incoming Call',
    },
    // Add more call entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calls'),
      ),
      body: ListView.builder(
        itemCount: calls.length, // Number of calls
        itemBuilder: (context, index) {
          // Get the current call data
          final call = calls[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(call['image']!), // Use the AssetImage
            ),
            title: Text(call['name']!), // Use the name from the call data
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(call['time']!), // Use the time from the call data
                Text(
                  call['status']!, // Use the status (Incoming, Missed, etc.)
                  style: TextStyle(
                    color: call['status'] == 'Missed Call' ? Colors.red : Colors.green,
                  ),
                ),
              ],
            ),
            onTap: () {
              // You can add functionality to handle call tap
            },
          );
        },
      ),
    );
  }
}
