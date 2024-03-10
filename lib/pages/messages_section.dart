
import 'package:flutter/material.dart';


import 'widgets/my_messages.dart';

class MyMessagesPage extends StatelessWidget {
  const MyMessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Message", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 35,)
          )
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ListTile(
              // leading: Image.asset("assets/images/img1.jpg"),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset("assets/images/img1.jpg"),
                ),
                title: Text("Temilolaoluwa",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                subtitle: Text("A wonder serenity has taken...", style:
                TextStyle(fontSize: 15, color: Colors.grey),),
                trailing:   CircleAvatar(
                  minRadius: 10,
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )

              // contentPadding: EdgeInsets.zero,
            ),
            ListTile(
              // leading: Image.asset("assets/images/img1.jpg"),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset("assets/images/img8.jpg"),
                ),
                title: Text("Tife",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                subtitle: Text("how the course go be na?...", style:
                TextStyle(fontSize: 15, color: Colors.grey),),
                trailing:   CircleAvatar(
                  minRadius: 10,
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )

              // contentPadding: EdgeInsets.zero,
            ),

            MessagesPage(text: "Babe", title: "yo", image: Image.asset("assets/images/img2.jpg") ,),
            MessagesPage(text: "Tolu", title: "na you dey hot o", image: Image.asset("assets/images/img7.jpg") ,),
            // MessagesPage(text: "Ife", title: "babee!", image: Image.asset("assets/images/img4.jpg") ,),
            MessagesPage(text: "Kike", title: "you just forgot me", image: Image.asset("assets/images/img6.jpg") ,),
            MessagesPage(text: "Bola", title: "wahala wahala...", image: Image.asset("assets/images/img3.jpg") ,),
            MessagesPage(text: "hello", title: "na A i get jare", image: Image.asset("assets/images/img8.jpg") ,),

          ],
        ),
      ),
    );
  }
}

