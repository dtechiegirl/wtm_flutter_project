import 'package:flutter/material.dart';

class SearchItems extends StatelessWidget {
  const SearchItems({
    super.key, required this.title, required this.text,  required this.amount, required this.location, required this.image, required this.label,
  });

  final Image image;
  final String title;
  final String text;
  final String amount;
  final String location;

  final String label;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 90,
        decoration: BoxDecoration(color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(15)),
        // child:
        // ListView(
        //   shrinkWrap: true,
        //   physics: ScrollPhysics(),
        //   children: [
        //
        //     ListTile(
        //       // leading: Image.asset("assets/images/img1.jpg"),
        //         leading: image,
        //         title: Container(
        //           margin: EdgeInsets.all(15),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             // mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               Text(title,
        //                 style: TextStyle(fontWeight: FontWeight.bold,
        //                     color: Colors.grey, fontSize: 13),
        //               ),
        //
        //               Text(text,
        //                 style: TextStyle(fontWeight: FontWeight.bold,
        //                     color: Colors.black, fontSize: 13),
        //               ),
        //
        //               Row(
        //                 // crossAxisAlignment: CrossAxisAlignment.end,
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //
        //                   Text(amount,
        //                     style: TextStyle(
        //                         color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
        //                   ),
        //
        //                   Text(location,
        //                     style: TextStyle(
        //                         color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
        //                   ),
        //
        //                 ],
        //               )
        //             ],
        //           ),
        //         ),
        //
        //         trailing:  Column(
        //           children: [
        //
        //             Image.asset("assets/images/google.png", width: 20,),
        //             SizedBox(height: 20,),
        //             Text(label, style: TextStyle(color: Colors.grey),)
        //           ],
        //         )
        //
        //       // contentPadding: EdgeInsets.zero,
        //     ),
        //   ]
        //
        // ),

        child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return  ListTile(
              // leading: Image.asset("assets/images/img1.jpg"),
                leading: image,
                title: Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(title,
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.grey, fontSize: 13),
                      ),

                      Text(text,
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black, fontSize: 13),
                      ),

                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(amount,
                            style: TextStyle(
                                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
                          ),

                          Text(location,
                            style: TextStyle(
                                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
                          ),

                        ],
                      )
                    ],
                  ),
                ),

                trailing:  Column(
                  children: [

                    Image.asset("assets/images/heart.png", width: 20,),
                    SizedBox(height: 20,),
                    Text(label, style: TextStyle(color: Colors.grey),)
                  ],
                )

              // contentPadding: EdgeInsets.zero,
            );
          },
        ),
      ),
    );
  }
}
