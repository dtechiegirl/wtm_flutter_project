import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({
    super.key,
    required this.text,
    required this.title, required this.image,
    // this.circleavatar,
  });

  final String text;
  final String title;
  final Image image;
  // final Widget circleavatar?;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Image.asset("assets/images/img1.jpg"),
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: image
      ),
      title: Text(text,
        style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black87),
      ),
      subtitle: Text(title, style:
      TextStyle(fontSize: 15, color: Colors.grey),),


      // contentPadding: EdgeInsets.zero,
    );
  }
}