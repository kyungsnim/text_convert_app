import 'dart:io';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = "";
  File image;
  Future<File> imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: [
      SizedBox(
        width: 100,
      ),
      Container(
          height: 200,
          width: 250,
          margin: EdgeInsets.only(top: 70),
          padding: EdgeInsets.only(left: 20, bottom: 5, right: 18),
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  )))),
      Container(
          margin: EdgeInsets.only(top: 20, right: 140),
          child: Stack(
            children: [
              Center(
                child: FlatButton(
                    onPressed: () {},
                    child: image != null
                        ? Image.file(image,
                            width: 140, height: 192, fit: BoxFit.fill)
                        : Container(
                            child: Icon(
                            Icons.camera_front,
                            size: 100,
                            color: Colors.grey,
                          ))),
              )
            ],
          ))
    ])));
  }
}
