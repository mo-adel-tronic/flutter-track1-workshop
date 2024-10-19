import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String input = '';
  String output = '';
  List<String> calculatorSymbols = [
    'c',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    '*',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  Color? myBackgroun(String x) {
    if (x == 'c' || x == '+/-' || x == 'DEL' || x == '%') {
      return const Color(0xffE2F3FB);
    } else if (x == '/' || x == '*' || x == '+' || x == '-') {
      return const Color(0xff438BFD);
    } else if (x == '=') {
      return const Color(0xffF37D00);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.blue,
        backgroundColor: const Color(0xfff1e96f0),
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Expanded(
        child: Column(
          children: [
            Container(
              height: 212,
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                input,
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                output,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            Expanded(
              flex: 8,
              child: GridView.builder(
                itemCount: calculatorSymbols.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (calculatorSymbols[i] == 'c') {
                          input = '';
                          output = '';
                        } else if (calculatorSymbols[i] == 'DEL') {
                          if (input.isNotEmpty) {
                            input = input.substring(0, input.length - 1);
                          }
                        } else if ('+-*/%'.contains(calculatorSymbols[i])) {
                          if (input.isNotEmpty &&
                              !'+-*/%'.contains(input[input.length - 1])) {
                            input += calculatorSymbols[i];
                          }
                        } else if (calculatorSymbols[i] == '=') {
                          Expression exp = Parser().parse(input);
                          double result =
                              exp.evaluate(EvaluationType.REAL, ContextModel());
                          setState(() {
                            output = result.toString();
                          });
                        } else {
                          setState(() {
                            input += calculatorSymbols[i];
                          });
                        }
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: myBackgroun(calculatorSymbols[i]),
                      ),
                      child: Text(
                        calculatorSymbols[i],
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
