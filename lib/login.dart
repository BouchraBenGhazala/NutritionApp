import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'MainPage.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 205, 233, 206),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.food_bank,
                size: 100,
                color: Colors.green,
              ),
              // Container(
              //   color: Colors.green,
              //   height: 64,
              //   width: 64,
              //   // child: Image.asset(
              //   //   'lib/Images/flutterLOGO.jpg',
              //   //   width: 50,
              //   //   height: 50,
              //   //   fit: BoxFit.contain,
              //   // ),
              // ),
              const SizedBox(
                height: 14,
              ),
              TextField(
                controller: _textController1,
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController1.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: _textController2,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        _textController2.clear();
                      },
                      icon: const Icon(Icons.clear)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPage()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ));
  }
}
