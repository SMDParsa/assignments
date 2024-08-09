import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  List<String> calcButtons = [
    'C',
    '( )',
    '%',
    '/',
    '7',
    '8',
    '9',
    '+',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    'X',
    '.',
    '0',
    '+-',
    '='
  ];

  String buttonItem = '';

  double firstDigits = 0;

  double secondDigits = 0;

  var operation;

  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Divider(
          color: Colors.transparent,
          height: 50,
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: Text(
              buttonItem,
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Container(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemCount: calcButtons.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(1),
                  child: MaterialButton(
                    color: index == 4 ||
                            index == 5 ||
                            index == 6 ||
                            index == 8 ||
                            index == 9 ||
                            index == 10 ||
                            index == 12 ||
                            index == 13 ||
                            index == 14 ||
                            index == 16 ||
                            index == 17 ||
                            index == 18
                        ? Color(0xffccccd9)
                        : index == 19
                            ? Colors.orange
                            : Colors.blueGrey,
                    onPressed: () {
                      setState(() {
                        if (index == 0) {
                          buttonItem = '';
                          firstDigits = 0;
                          secondDigits = 0;
                          result = 0;
                          operation = null;
                          return;
                        }
                        switch (index) {
                          case 3:
                          case 7:
                          case 11:
                          case 15:
                            firstDigits = double.parse(
                                buttonItem.substring(0, buttonItem.length));
                            operation = calcButtons[index];
                        }

                        if (index == 19) {
                          secondDigits = double.parse(buttonItem.substring(
                              buttonItem.indexOf(operation) + 1,
                              buttonItem.length));

                          if (operation != null) {
                            switch (operation) {
                              case '+':
                                result = firstDigits + secondDigits;
                              case '-':
                                result = firstDigits - secondDigits;
                              case 'X':
                                result = firstDigits * secondDigits;
                              case '/':
                                result = firstDigits / secondDigits;
                            }
                          }
                          buttonItem =
                              '$buttonItem${calcButtons[index]}$result';
                        } else {
                          buttonItem = buttonItem + calcButtons[index];
                        }
                      });
                    },
                    child: Text(
                      calcButtons[index],
                      style: TextStyle(
                          fontSize: 40,
                          color: index == 0 ||
                                  index == 1 ||
                                  index == 2 ||
                                  index == 3 ||
                                  index == 7 ||
                                  index == 11 ||
                                  index == 15 ||
                                  index == 19
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    ));
  }
}
