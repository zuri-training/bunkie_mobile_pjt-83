import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        //constraints: BoxConstraints.expand(),
        padding: EdgeInsets.fromLTRB(
            0, MediaQuery.of(context).size.height / 5, 0, 0),
        child: Center(
          child: Column(
            children: [
              Text(
                'Welcome User',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 30),
              Text(
                'Kindly complete your profile',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 120),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CompleteProfile()));
                },
                child: Text('Complete Profile'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Items {
  const Items(this.item);
  final String item;
}

class CompleteProfile extends StatefulWidget {
  @override
  _CompleteProfileState createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  Items selectedUser;
  List<Items> users = <Items>[
    const Items('Male'),
    const Items('Female'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Profile'),
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width / 30,
            MediaQuery.of(context).size.height / 15,
            MediaQuery.of(context).size.width / 30,
            0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 5,
              child: Text('photo'),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
            SizedBox(
              height: 10,
            ),
            DropdownButton<Items>(
              hint: Text('Gender'),
              value: selectedUser,
              onChanged: (Items value) {
                setState(() {
                  selectedUser = value;
                });
              },
              items: users.map((Items user) {
                return DropdownMenuItem<Items>(
                    value: user, child: Text(user.item));
              }).toList(),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'State of origin',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Universitiy',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Department',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Social Handles',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CompleteProfileNext()));
              },
              child: Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}

class CompleteProfileNext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomPadding: false,
      body: Column(children: [
        Text(
          'Personal Interest ',
          style: TextStyle(fontSize: 38),
        ),
        SizedBox(
          height: 10,
        ),
        Text('Select at least 3'),
        Row(
          children: [
            Text('Interest 1'),
            SizedBox(
              width: 10,
            ),
            Text('Interest 2'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text('Interest 3'),
        SizedBox(
          height: 10,
        ),
        Text('ID Upload'),
        Container(
          height: 15,
          width: 15,
          child: Text('cam'),
        ),
        SizedBox(
          height: 30,
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Complete'),
        )
      ]),
    );
  }
}
