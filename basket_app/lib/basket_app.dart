// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class BasketAppScreen extends StatefulWidget {
  const BasketAppScreen({super.key});

  @override
  State<BasketAppScreen> createState() => _BasketAppScreenState();
}

int counter = 0;
int counteer = 0;

class _BasketAppScreenState extends State<BasketAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFE9800),
        title: Text(
          'Basketball Point Countet',
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        counter.toString(),
                        style: TextStyle(fontSize: 140),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(130, 50),
                            backgroundColor: Color(0xffFE9800)),
                        onPressed: () {
                          setState(() {
                            counter += 1;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(130, 50),
                            backgroundColor: Color(0xffFE9800)),
                        onPressed: () {
                          setState(() {
                            counter += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(130, 50),
                            backgroundColor: Color(0xffFE9800)),
                        onPressed: () {
                          setState(() {
                            counter += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 560,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: VerticalDivider(
                      width: 1,
                      thickness: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        counteer.toString(),
                        style: TextStyle(fontSize: 140),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(130, 50),
                            backgroundColor: Color(0xffFE9800)),
                        onPressed: () {
                          setState(() {
                            counteer += 1;
                          });
                        },
                        child: Text(
                          'Add 1 Point',
                          style: 
                          TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(130, 50),
                            backgroundColor: Color(0xffFE9800)),
                        onPressed: () {
                          setState(() {
                            counteer += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(130, 50),
                            backgroundColor: Color(0xffFE9800)),
                        onPressed: () {
                          setState(() {
                            counteer += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(130, 50),
                    backgroundColor: Color(0xffFE9800)),
                onPressed: () {
                  setState(() {
                    counteer = 0;
                    counter = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
