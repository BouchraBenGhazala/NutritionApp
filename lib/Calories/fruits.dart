import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nutritionapp/Pages/Page1.dart';

class fruits extends StatelessWidget {
  fruits(
      {super.key,
      required this.text,
      required this.calories,
      required this.couleurAdd});
  final String text;
  final double calories;
  final Color couleurAdd;
  final _controller = TextEditingController();
  double qnt = 20.0;

  void AddPage1(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Page1(fruitQuantity: qnt)));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '100g ,' + calories.toString() + 'cal',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   width: 170,
          // ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(110),
                      color: Colors.white),
                  child: const Icon(
                    Icons.apple,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: couleurAdd,
                          title: Text(text),
                          content: TextField(
                            controller: _controller,
                            keyboardType: TextInputType
                                .number, //to convert type to number
                            decoration: InputDecoration(
                              labelText: 'Quantity(gramme)',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.green)),
                              onPressed: () {
                                AddPage1(context);
                              },
                              child: Text('OK'),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                            )
                          ],
                        );
                      });
                },
                color: const Color.fromARGB(255, 205, 233, 206),
                child: const Icon(Icons.add),
              )),
        ],
      ),
    );
  }
}
