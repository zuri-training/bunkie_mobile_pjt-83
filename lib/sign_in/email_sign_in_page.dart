import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Sign in'),
      ),
      body: Column(
        children: [
          TextField(
            decoration:
                InputDecoration(labelText: 'Email', hintText: 'abc@xyz.com'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'abc@xyz.com',
            ),
            obscureText: true,
          ),
          Row(
            children: [
              Text('Remember me'),
              Text('Forgot password'),
            ],
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Sign in'),
          )
        ],
      ),
    );
  }
}
