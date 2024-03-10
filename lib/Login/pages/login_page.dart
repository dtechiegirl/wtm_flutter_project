
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/Signup/pages/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 800,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back!", style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              ),

              Text("Fill your detalils or continue",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey
              ),
              ),

              Text("with social media",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey
              ),
              ),
              const SizedBox(height: 20),

              Column(
                children: [
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                        labelText: "Email Address",

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          gapPadding: 4.0,

                        borderSide: BorderSide(color: Colors.yellow, width: 5),

                      ),
                        prefixIcon: Icon(Icons.email, color: Colors.black38,),


                    ),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  // label: "email",
                    hintText:"Password",
                    prefixIcon: Icon(Icons.lock, color: Colors.black38,),
                    border: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.yellow, width: 5),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  gapPadding: 4.0,

                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded, color: Colors.black38,)
                )
              ),

            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forget password?", style: TextStyle(
                  color: Colors.grey,
                ),
                )
              ],
            ),

              SizedBox(height: 15,),

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
                  child: Text("LOG IN"),
                ),
                
              ),

              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(child: Divider(
                    thickness: 2.3,
                    color: Colors.grey,
                    indent: 110,
                    endIndent: 15.0,
                  ),
                  ),
                  Text("Or Continue with",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                  ),
                  Expanded(child: Divider(
                    thickness: 2.3,
                    color: Colors.grey,
                    indent: 10,
                    endIndent: 115.0,
                  ),
                  ),
                ],
              ),
              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/google.png",
                    height: 50,
                    width: 50,
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(width: 15,),
                  Image.asset(
                    "assets/images/facebook.png",
                    height: 50,
                    width: 50,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?", style: TextStyle(
                    color: Colors.grey, fontSize: 16
                  ),
                  ),


                  TextButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return Signuppage();
                            })
                        );
                      },
                      child: Row(
                        children: [
                          Text("Create Account",
                            style: TextStyle(
                              color: Colors.black, fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Icon(Icons.arrow_forward_ios, size: 18,)
                        ],
                      )),
                ],
              )

              
            ],
            
          ),
          

      ),
      
    );
    
  }
}