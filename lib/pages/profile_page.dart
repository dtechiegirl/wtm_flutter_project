
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Signup/pages/sign_up.dart';
import 'widgets/profile_item.dart';
import 'widgets/profile_text_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black87,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold,),),
        centerTitle: true,
      ),
      body: Column(

        children: [
          Stack(
            children: [
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Image.asset("assets/images/img4.jpg"),
                ),
              ),

              Positioned(
                top:-30 ,
                left: 210,
                child: Container(
                  height: 200,
                  width: 25,
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.greenAccent,

                  ), child: Icon(Icons.edit, color: Colors.white,size: 20,)

                ),
              ),

                // alignment: Alignment.bottomRight,


            ],
          ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Temilola Tomoloju", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30
                ),),
                Text("Edit Profile", style: TextStyle(
                    fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),

          
          Container(
            margin: EdgeInsets.all(15),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileTextItem(title: "Name",),
                SizedBox(height: 10,),
                ProfileItem(text: "Temi",),
                SizedBox(height: 10,),
                ProfileTextItem(title: "Email",),
                SizedBox(height: 10,),
                ProfileItem(text: "temi@gmail.com",),
                SizedBox(height: 10,),
                ProfileTextItem(title: "Password",),
                SizedBox(height: 10,),
                ProfileItem(text: "********",),
                SizedBox(height: 20,),
                Center(
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(380,50),
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),

                    ),
                    child: Text("Save Now"),
                  ),

                ),



              ],
            ),
          )
        ],
      ),



    );
  }
}




