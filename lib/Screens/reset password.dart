import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
              style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
            padding:EdgeInsets.all(30.0),
            child: Center(
                child: (
                    Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Reset Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('New Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                    ),
                  ],
                ),
              ),
    ),
                  Container(

                    decoration:BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20),
                        )
                    ),
                    padding: EdgeInsets.all(8.0),


                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "##########",fillColor: Colors.grey,
                          border: InputBorder.none,
                          labelText: ("new password")
                      ),
                    ),
                  ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Text(' Confirm New Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                      ),
                      Container(

                        decoration:BoxDecoration(
                            border: Border.all(
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20),
                            )
                        ),
                        padding: EdgeInsets.all(8.0),


                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "##########",fillColor: Colors.grey,
                              border: InputBorder.none,
                              labelText: ("confirm new password")
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                      ),
                      ButtonTheme(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        child: RaisedButton(
                          color: Colors.purple,
                          onPressed: () {},
                          child: Text("Confirm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ),
                      ),

   ] )

    )
    ),
          ),
        ]
        )
    );
  }
}
