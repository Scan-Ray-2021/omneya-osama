import 'package:flutter/material.dart';
import 'package:info/Screens/forget%20Password.dart';
class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
          child: Icon(Icons.arrow_back, color: Colors.white,),
        ),
        title: Text('Account Info'),

      ),
      body: ListView(
        children: [
          Container(
            padding:EdgeInsets.all(50.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(child: Text('Old Password'),
                      padding: EdgeInsets.all(10.0),
                  ),
                 Container(

                     decoration:BoxDecoration(
                         border: Border.all(
                           color: Colors.blueGrey,
                         ),
                         borderRadius: BorderRadius.all(Radius.circular(20),
                         )
                     ),
                     padding: EdgeInsets.all(10.0),


                     child: TextField(
                       decoration: InputDecoration(
                           hintText: "##########",fillColor: Colors.grey,
                           border: InputBorder.none,
                           labelText: ("old password")
                       ),
                     ),
                   ),
                  Container(child: Text('New Password'),
                  padding: EdgeInsets.all(10.0),),
                  Container(

                    decoration:BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20),
                        )
                    ),
                    padding: EdgeInsets.all(10.0),


                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "##########",fillColor: Colors.grey,
                          border: InputBorder.none,
                          labelText: ("new password")
                      ),
                    ),
                  ),
                  Container(child: Text('Confirm New Password'),
                      padding: EdgeInsets.all(10.0),),
                  Container(

                    decoration:BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20),
                        )
                    ),
                    padding: EdgeInsets.all(10.0),


                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "##########",fillColor: Colors.grey,
                          border: InputBorder.none,
                          labelText: ("confirm new password")
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

          ButtonTheme(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: RaisedButton(
              color: Colors.purple,
              onPressed: () {},
              child: Text("Confirm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
            ),
          ),
          ButtonTheme(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: RaisedButton(
              color: Colors.white,
              elevation: 0.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetPassword()),
                );
              },
              child: Text("Forget Password ?"),
            ),
          )
        ],
      ),
    );
  }
}



