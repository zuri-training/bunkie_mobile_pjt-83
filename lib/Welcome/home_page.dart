import 'package:flutter/material.dart';
import 'package:bunkie/sign_in/email_sign_up_page.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomPadding: false,
      body: Center(
          child: Column(
        children: [
          Row(children: [
            Expanded(
              child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.height / 20),
                  child: Image.asset(
                    'assets/Images/images (3).jpeg',
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                  )),
            )
          ]),
          SizedBox(height: MediaQuery.of(context).size.height / 10),
          Text(
            'Find and connect with \n roommates around you',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 4),
          Row(children: [
            Expanded(
                child: Container(
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmailSignInPage()));
                },
                child: Text('Get Started'),
              ),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              margin: EdgeInsets.all(20),
            ))
          ]),
        ],
      )),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'sign',
            ),
            SizedBox(
              width: 40,
            ),
            Text('Search')
          ],
        ),
        Text(
          'Hi, User',
          style: TextStyle(fontSize: 38),
        ),
        Text('How can we be of help today'),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            FlatButton(
              onPressed: () {},
              child: Text('I need a room'),
              height: 15,
              minWidth: 15,
            ),
            FlatButton(
              onPressed: () {},
              child: Text('I have a room'),
              height: 15,
              minWidth: 15,
            )
          ],
        )
      ],
    );
  }
}
