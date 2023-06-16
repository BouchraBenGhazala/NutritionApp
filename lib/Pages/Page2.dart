import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nutritionapp/Calories/fruits.dart';

class Page2 extends StatelessWidget {
  final List _Vegetables = [
    'Potato',
    'Tomato',
    'Carotte',
    'Corgette',
    'Pois chiche'
  ];
  final List _fruits = ['apple', 'orange', 'banana', 'avocado', 'kiwi'];
  final List _caloriesVegetables = [26.0, 110.0, 88.0, 106.0, 92.0];
  final List _caloriesFruits = [35.0, 114.0, 48.0, 108.0, 192.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 243, 243),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 205, 233, 206),
          title: const Text(
            'C A L O R I E S',
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'V E G E T A B L E S',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 74, 160, 77)),
                  // color: Color.fromARGB(255, 35, 83, 37),
                  height: 300,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: _Vegetables.length,
                        itemBuilder: (context, index) {
                          //LBcontinue
                          return fruits(
                            text: _Vegetables[index],
                            calories: _caloriesVegetables[index],
                            couleurAdd: const Color.fromARGB(255, 74, 160, 77),
                          );
                        }),
                  )),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'F R U I T S',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 179, 72, 64)),
                  // color: Color.fromARGB(255, 35, 83, 37),
                  height: 300,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: _fruits.length,
                        itemBuilder: (context, index) {
                          //LBcontinue
                          return fruits(
                            text: _fruits[index],
                            calories: _caloriesFruits[index],
                            couleurAdd: const Color.fromARGB(255, 179, 72, 64),
                          );
                        }),
                  )),
            )),
          ],
        ));
  }
}
