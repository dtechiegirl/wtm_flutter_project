


import 'package:flutter/material.dart';

class NotificationToggle extends StatelessWidget {
  const NotificationToggle({
    super.key, required this.title, required this.text, required this.trailingIcon,
  });

  final String title;
  final String text;
  final Widget trailingIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
          ),
          Text(text,style: TextStyle(

              fontSize: 15,
            color: Colors.grey,
            fontWeight: FontWeight.bold
          ),
          ),
        ],
      ),
      trailing: trailingIcon,
    );
  }
}

//
// Widget build(BuildContext context) {
//   return ListTile(
//     title: Column(
//       children: [
//         Text("New Post"),
//         Text("If any new post update")
//       ],
//     ),
//     trailing: Switch(
//       value: true,
//       onChanged: (value){}, activeColor: Colors.green.shade200,
//     ),
//   );
// }