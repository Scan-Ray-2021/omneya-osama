import 'package:flutter/material.dart';

import 'change Password.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Row add_radio_button(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Colors.blue,
          value: btnValue,
          groupValue: -1,
        ),
        Text(title)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: RaisedButton(
          onPressed: () {},
          elevation: 0.0,
          color: Colors.purple,
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Account Info',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.xovi.com/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png"),
                        radius: 35,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white54,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )),
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "enter userName",
                        fillColor: Colors.grey,
                        border: InputBorder.none,
                        labelText: ("userName")),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white70,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )),
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: "enter userEmail",
                    border: InputBorder.none,
                    labelText: ("Email"),
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white70,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )),
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: "enter userAddress",
                    border: InputBorder.none,
                    labelText: ("Address"),
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white70,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )),
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: "enter userAge",
                    border: InputBorder.none,
                    labelText: ("Age"),
                  )),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white70,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Gender',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  add_radio_button(0, 'Male'),
                  add_radio_button(1, 'Female'),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: RaisedButton(
                  color: Colors.purple,
                  onPressed: () {},
                  child: Text(
                    "Save Changes",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: RaisedButton(
                  color: Colors.purple,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangePassword()),
                    );
                  },
                  child: Text(
                    "Change Password",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
