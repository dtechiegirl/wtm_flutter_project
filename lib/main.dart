import 'package:flutter/material.dart';
import 'package:mini_project/Login/pages/login_page.dart';
import 'package:mini_project/pages/messages_section.dart';
// import 'package:mini_project/pages/popular_jobs_page.dart';
import 'package:mini_project/pages/profile_page.dart';
import 'package:mini_project/pages/search_page.dart';
// import 'package:mini_project/pages/message_page.dart';
import 'package:mini_project/pages/widgets/my_messages.dart';

import 'pages/bottom_nav_page.dart';
import 'pages/notification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavPage()
    );
  }
}
