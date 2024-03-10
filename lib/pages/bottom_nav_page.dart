
import 'package:flutter/material.dart';
import 'package:mini_project/pages/messages_section.dart';
import 'package:mini_project/pages/notification_page.dart';

import 'profile_page.dart';
import 'search_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  var listOfPages = [
    ProfilePage(),
   MyMessagesPage(),
    SearchPage(),
    NotificationPage(),

  ];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: IndexedStack(
        children: listOfPages,
        index: selectedIndex,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message),
              label: "Message"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.notification_add),
              label: "Notification"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: "Profile"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined),
              label: "Search"
          ),
        ],
      ),
    );
  }
}
