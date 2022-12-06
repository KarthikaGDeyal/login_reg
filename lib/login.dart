
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.greenAccent,),


        ),
      ),
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text("LOGIN",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold),

                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        children: <Widget>[
                          inputFile(label: "EMAIL"),
                          inputFile(label: "PASSWORD", obscureText: true)
                        ],
                      ),
                    ),
                    Padding(padding:
                    EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        padding: EdgeInsets.only(top: 3, left: 3),
                        decoration:
                        BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border(
                              bottom: BorderSide(color: Colors.greenAccent),
                              top: BorderSide(color: Colors.greenAccent),
                              left: BorderSide(color: Colors.greenAccent),
                              right: BorderSide(color: Colors.greenAccent),

                            )


                        ),
                        child: MaterialButton(

                          height: 60,
                          onPressed: () {},
                          color: Colors.greenAccent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),

                          ),
                          child: Text(
                            "LOGIN", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,

                          ),
                          ),

                        ),
                      ),
                    ),




                  ],
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}


// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.greenAccent
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}