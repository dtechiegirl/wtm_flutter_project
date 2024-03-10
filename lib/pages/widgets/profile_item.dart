

import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key, required this.text,
  });
 final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: text,
      style:TextStyle(fontWeight: FontWeight.bold),
      decoration: const InputDecoration(
        fillColor: Colors.white,
        // labelText: "Email Address",

        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          gapPadding: 4.0,

          borderSide: BorderSide(color: Colors.yellow, width: 5),

        ),
        // prefixIcon: Icon(Icons.email, color: Colors.black38,),


      ),
    );
  }
}