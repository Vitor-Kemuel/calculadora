import 'package:calculadora/View/Widgets/CalculatorButton/calculator_button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({
    Key? key,
  }) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String painelString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 71, 71, 71),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 25),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color.fromARGB(255, 49, 49, 49),
                ),
                child: Text(
                  painelString,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: const [
                        Expanded(
                          child: CalculatorButton(
                            text: Text(
                              "AC",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            color: Colors.amber,
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            color: Colors.blue,
                            text: Text(
                              "()",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Text(
                              "%",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            color: Colors.blue,
                            text: Text(
                              "/",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Expanded(
                          child: CalculatorButton(
                            text: Text("7"),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Text("8"),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Text("9"),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            color: Colors.blue,
                            text: Text(
                              "X",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Expanded(
                          child: CalculatorButton(
                            text: Text("4"),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Text("5"),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Text("6"),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            color: Colors.blue,
                            text: Text(
                              "-",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Expanded(
                          child: CalculatorButton(
                            text: Text("1"),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Text("2"),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Text("3"),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Text(
                              "+",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Expanded(
                          child: CalculatorButton(
                            text: Text("0"),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Text(","),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Icon(Icons.backspace_rounded),
                          ),
                        ),
                        Expanded(
                          child: CalculatorButton(
                            text: Text("="),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
