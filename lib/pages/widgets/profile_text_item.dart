import 'package:flutter/material.dart';

class ProfileTextItem extends StatelessWidget {
  const ProfileTextItem({
    super.key, required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.bold
      ),
    );
  }
}