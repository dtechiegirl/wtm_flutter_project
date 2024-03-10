
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_project/pages/profile_page.dart';

import 'widgets/search_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colorors.yellow,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black87,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Search", style: TextStyle(fontWeight: FontWeight.bold,),),
        centerTitle: true,
      ),
      body: Column(

        children: [
          Container(
            height: 70,
            padding: EdgeInsets.all(10),
            // decoration: BoxDecoration(color: Colors.grey),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    initialValue: "UI Design",
                    style:TextStyle(fontWeight: FontWeight.bold),
                    decoration: const InputDecoration(
                      fillColor: Colors.white60,
                      filled: true,
                      // labelText: "Email Address",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        gapPadding: 4.0,

                        borderSide: BorderSide(color: Colors.yellow, width: 5),

                      ),
                      // prefixIcon: Icon(Icons.email, color: Colors.black38,),


                    ),
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/settingIcon.png", width: 40, ),
                ),


                // Image(image: "assets/images/settingIcon.png")

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                Row(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("35 Job Opportunity",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(150,50),
                        backgroundColor: Colors.greenAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                        ),

                      ),
                      child: Text("Most Relevant"),
                    ),
                    SizedBox(width: 40,),
                    Text("Most Recent", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                  ],
                ),

                SizedBox(height: 10,),
                SearchItems(
                  image: Image.asset("assets/images/img3.jpg"),
                  title: "Facebook",
                  text:  "UI/UX Designer",
                  amount: "\$4000/m",
                  location: "Toronto, Cnanda",
                  label: "06h",
                ),

                SizedBox(height: 10,),
                SearchItems(
                  image: Image.asset("assets/images/img3.jpg"),
                  title: "Dribble",
                  text:  "Product Designer",
                  amount: "\$6000/m",
                  location: "Toronto,Canada",
                  label: "12h",
                ),
                SizedBox(height: 10,),
                SearchItems(
                  image: Image.asset("assets/images/img3.jpg"),
                  title: "Google",
                  text:  "Senior UX designer",
                  amount: "\$4500/m",
                  location: "New York, USA",
                  label: "24h",
                ),
                SizedBox(height: 10,),
                SearchItems(
                  image: Image.asset("assets/images/img3.jpg"),
                  title: "Shopify",
                  text:  "Visual Preacher",
                  amount: "\$1200/m",
                  location: "New York, USA",
                  label: "24h",
                ),




              ],
            ),
          )
        ],
      ),

    );
  }
}

