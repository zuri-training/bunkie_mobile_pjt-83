import 'package:flutter/material.dart';
import 'package:bunkie/sign_in/email_sign_up_form.dart';

class EmailSignInPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: EmailSignUpForm(),
        ),
      ),
      resizeToAvoidBottomPadding: false, // To prevent overflow
    );
  }
}
