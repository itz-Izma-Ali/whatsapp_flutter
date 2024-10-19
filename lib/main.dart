import 'package:flutter/material.dart';
import 'pages/chats_page.dart';
import 'pages/status_page.dart';
import 'pages/calls_page.dart';

void main() {
  runApp(WhatsAppUI());
}

class WhatsAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 11, 142, 127),
        hintColor: const Color(0xFF25D366),
      ),
      home: WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 47, 236, 116) ,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
        body: TabBarView(
          children: [
            ChatsPage(), // Page for Chats
            StatusPage(), // Page for Status
            CallsPage(),  // Page for Calls
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Action for floating button
          },
          child: const Icon(Icons.chat),
          backgroundColor: const Color(0xFF25D366),
        ),
      ),
    );
  }
}