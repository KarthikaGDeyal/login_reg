import 'package:flutter/material.dart';
import 'package:login_reg/login.dart';

import 'reg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery
              .of(context)
              .size
              .height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text(
                    "GO",
                    style:  const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      

                    ),
                  ),

           Container(
                  height: MediaQuery.of(context).size.height/3,
                  decoration: const BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage("assets/images/welcome1.jpg"),
                    ),
                  ),
             ),
          ],
        ),

              Column(
                  children:<Widget>[
                  // the login button
                  MaterialButton(
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    color:Colors.greenAccent,
                    // defining the shape
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.greenAccent
                        ),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(
                        color:Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RegisterPage()));
                    },
                    color:  Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),
                  ),
                ],
              ),
          ],
    ),
    ),
    ),
    );
  }
}