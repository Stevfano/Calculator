import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Rectangle_button.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late int firstNumber;
  late int secondNumber;
  late String history = '';
  late String displayText = '';
  late String result;
  late String operator;

  void btnOnClick(String btnValue) {
    print(btnValue);
    if (btnValue == 'C') {
      displayText = '';
      firstNumber = 0;
      secondNumber = 0;
      result = '';
    } else if (btnValue == 'AC') {
      displayText = '';
      firstNumber = 0;
      secondNumber = 0;
      result = '';
      history = '';
    } else if (btnValue == '+/-') {
      if (displayText[0] != '-') {
        result = '-' + displayText;
      } else {
        result = displayText.substring(1);
      }
    } else if (btnValue == '<') {
      result = displayText.substring(0, displayText.length - 1);
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'X' ||
        btnValue == '/') {
      firstNumber = int.parse(displayText);
      result = '';
      operator = btnValue;
    } else if (btnValue == '=') {
      secondNumber = int.parse(displayText);
      if (operator == '+') {
        result = (firstNumber + secondNumber).toString();
        history = firstNumber.toString() +
            operator.toString() +
            secondNumber.toString();
      }
      if (operator == '-') {
        result = (firstNumber - secondNumber).toString();
        history = firstNumber.toString() +
            operator.toString() +
            secondNumber.toString();
      }
      if (operator == 'X') {
        result = (firstNumber * secondNumber).toString();
        history = firstNumber.toString() +
            operator.toString() +
            secondNumber.toString();
      }
      if (operator == '/') {
        result = (firstNumber / secondNumber).toString();
        history = firstNumber.toString() +
            operator.toString() +
            secondNumber.toString();
      }
    } else {
      result = int.parse(displayText + btnValue).toString();
    }
    setState(() {
      displayText = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Simple Calculator',
              style: TextStyle(
                color: Colors.lightGreen,
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 10, 0, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 26,
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment.bottomRight,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    displayText,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                alignment: Alignment.bottomRight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RectangleIconButton(
                    text: 'AC',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 20.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: 'C',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '<',
                    fillColor: Colors.yellowAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '/',
                    fillColor: Colors.yellowAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RectangleIconButton(
                    text: '9',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '8',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '7',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: 'X',
                    fillColor: Colors.yellowAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RectangleIconButton(
                    text: '6',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '5',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '4',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '-',
                    fillColor: Colors.yellowAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RectangleIconButton(
                    text: '3',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '2',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '1',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '+',
                    fillColor: Colors.yellowAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RectangleIconButton(
                    text: '+/-',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 22.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '0',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '00',
                    fillColor: Colors.blueAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RectangleIconButton(
                    text: '=',
                    fillColor: Colors.yellowAccent,
                    textColor: Colors.black,
                    textSize: 24.0,
                    onClick: btnOnClick,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
