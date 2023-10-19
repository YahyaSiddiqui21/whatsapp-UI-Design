import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: _WhatsAppHomeState(),
    );
  }
}

class _WhatsAppHomeState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: const Color.fromARGB(255, 9, 78, 12),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Add search functionality
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Add more options
              },
            ),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // Chats Page
            Container(
              child: Center(
                child: Text('Chats Page'),
              ),
            ),

            // Status Page
            Container(
              child: Center(
                child: Text('Status Page'),
              ),
            ),

            // Calls Page
            Container(
              child: Center(
                child: Text('Calls Page'),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            // Handle the floating action button's action (e.g., start a new chat, new status, or call).
          },
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
