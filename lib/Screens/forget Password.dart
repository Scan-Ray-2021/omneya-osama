import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:info/Screens/reset%20password.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            elevation: 0.0,
            color: Colors.purple,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Text(
              'ScanRay',
              style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),
            ),
          ),
        ),
        body: ListView(
          children: [
            Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Forget Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                      'We will send your code to : '
                      '(Email & Phone Number)',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                ),
                Container(
                  child: Text(
                    'Enter the 6-digit code:',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  padding: EdgeInsets.all(20.0),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueGrey,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      )),
                  padding: EdgeInsets.all(5.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "######",
                        fillColor: Colors.grey,
                        border: InputBorder.none,
                        labelText: ("enter the code")),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       ButtonTheme(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                         child: RaisedButton(
                           elevation: 0.0,
                           color: Colors.white,
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => ForgetPassword()),
                             );
                           },
                           child: Text("Didn't get a code?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                         ),
                       ),
                     ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  child: ButtonTheme(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: RaisedButton(
                           color: Colors.purple,
                      padding: EdgeInsets.all(10),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResetPassword()),
                        );
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ]
        ),
    );
  }
}
