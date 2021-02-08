import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'HomePage.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 15,
      navigateAfterSeconds: HomePage(),
      title: Text(
        'Text Converter',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        )
      ),
      backgroundColor: Colors.white,
      loaderColor: Colors.black,
      loadingText: Text(
        "You can convert image to text"
      ),
    );
  }
}
