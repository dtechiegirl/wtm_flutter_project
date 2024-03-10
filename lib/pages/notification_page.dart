
import 'package:flutter/material.dart';

import 'widgets/notification_toggle.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black87,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Notification", style: TextStyle(fontWeight: FontWeight.bold,),),
        centerTitle: true,
      ),
      body: Column(
        children: [
         Column(
              children: [
                NotificationToggle(
                  title: "New Post",
                  text: "if any new job post update",
                  trailingIcon: Switch(
                    value: true,
                    onChanged: (value){}, activeColor: Colors.green.shade400,
                  ),
                ),



                NotificationToggle(
                  title: "Got Hired",
                  text: "if any got hired any comapany",
                  trailingIcon: Switch(
                    value: true,
                    onChanged: (value){}, activeColor: Colors.green.shade400,
                  ),
                ),

                NotificationToggle(
                  title: "Got Rejected",
                  text: "if any got rejected any comapany",
                  trailingIcon: Switch(
                    value: false,
                    onChanged: (value){}, activeColor: Colors.green.shade400,
                  ),
                ),

                NotificationToggle(
                  title: "Message",
                  text: "Got any new message",
                  trailingIcon: Switch(
                    value: false,
                    onChanged: (value){}, activeColor: Colors.green.shade400,
                  ),
                ),


                NotificationToggle(
                  title: "Call",
                  text: "Got a call",
                  trailingIcon: Switch(
                    value: false,
                    onChanged: (value){}, activeColor: Colors.green.shade400,
                  ),
                ),
                NotificationToggle(
                  title: "Dark Mode",
                  text: "Enable dark theme",
                  trailingIcon: Switch(
                    value: false,
                    onChanged: (value){}, activeColor: Colors.green.shade400,
                  ),
                ),

              ]
          ),
        ],
      ),
    );
  }
}

