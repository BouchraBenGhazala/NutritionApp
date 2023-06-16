import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Calories/fruits.dart';

class Page1 extends StatelessWidget {
  Page1({super.key,required this.fruitQuantity});
  final double fruitQuantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 243, 243),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 205, 233, 206),
          title: Text(
            'F O O D Y',
            style: TextStyle(color: Colors.green),
          ),
          actions: [
            Icon(
              Icons.food_bank,
              size: 50,
              color: Colors.green,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const Text(
                "Today's Meal Plan",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 100,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 115, 167, 117),
                ),
                child: ListView(
                  children: [
                    Text(fruitQuantity.toString()),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Good tips",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 100,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}
