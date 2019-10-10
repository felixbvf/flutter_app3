import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  MyTextField({Key key}) : super(key: key);

  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputText ="";
  final TextEditingController controller = TextEditingController();

  void onSubmitted(String value){  //permite renderizar el texto 
    setState(() {
      inputText = inputText + "\n" + value;
      controller.text ="";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("TextField widget"),
       ),
       body: Container(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             TextField(
               decoration: InputDecoration(hintText: "Ingrese el texto aqui"),
               onSubmitted: onSubmitted,
               controller: controller,
             ),
            Text(inputText)

           ],
         ),
       )
    );
  }
}