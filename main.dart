// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// trial comment 6

import 'package:flutter/material.dart';

void main() {
  runApp(
    
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
              Tab(
                child: Text(
                  'Chats',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                ),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        value: '1',
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: '1',
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        value: '1',
                        child: Text('Log Out'),
                      ),
                    ]),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'camera',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Image.asset('images/aakash.jpg'),
                    ),
                    title: Text('Aakash Agarwal'),
                    subtitle: Text('come to my home'),
                    trailing: Text('6 min ago'),
                  );
                }),
            Text('status'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Image.asset('images/aakash.jpg'),
                    ),
                    title: Text('Aakash Agarwal'),
                    subtitle: Text('your missed call'),
                    trailing: Icon(
                      index % 2 == 0 ? Icons.phone : Icons.video_call,
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
