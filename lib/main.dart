import 'package:flutter/material.dart';
import 'package:bunkie/Welcome/home_page.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen(),
        title: 'Bunkie',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ));
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer timer;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      print('s');
      await Future.delayed(
          Duration(seconds: 3),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => GetStarted())));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color.lerp(Colors.greenAccent, Colors.blue, 0.5),
            child: Center(
              child: Image.asset(
                'assets/Images/Bunkie.jpg',
              ),
            )));
  }
}
