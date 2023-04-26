import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class login extends StatelessWidget {
  const login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: EdgeInsets.all(50),
          width: 300,
          height: 100,
          child: TextField(
            decoration: InputDecoration(hintText: 'Enter your username'),
          ),
        ),
        Container(
          width: 300,
          height: 100,
          child: TextField(
            decoration: InputDecoration(hintText: 'Enter your password'),
          ),
        ),
        MaterialButton(
          color: Colors.green,
          onPressed: () {},
          child: Text(
            'Login',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    ));
  }
}
