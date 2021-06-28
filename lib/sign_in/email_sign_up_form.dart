import 'package:flutter/material.dart';
import 'package:bunkie/Welcome/welcome_page.dart';
import 'package:bunkie/sign_in/email_sign_in_page.dart';

class EmailSignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'username@host.com',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
          obscureText: true,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: 'Address',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0))),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Welcome()));
          },
          child: Text('Sign up'),
          color: Colors.greenAccent,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            },
            child: Text('I have an account. Sign In.'))
      ],
    );
  }
}
