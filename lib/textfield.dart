import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField({Key key}) : super(key: key);

  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("TextField widget"),
       ),
       body: Container(
         child: Column(
           children: <Widget>[
             
           ],
         ),
       )
    );
  }
}