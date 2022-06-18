import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final textController = TextEditingController();
  int? number1 = null;
  int? number2 = null;
  int? result = null;
  String? resultResult = null;
  int? function = null;
  double? number1del = null;
  double? number2del = null;
  double? resultDel = null;
  @override
  Widget build(BuildContext context) {
    var child;
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: TextField(
        controller: textController,
    ),
    ),
        body:
        GridView.count(
          // Расстояние между горизонтальными суб-виджетами
          crossAxisSpacing: 10.0,
          // Расстояние между вертикальными суб-виджетами
          mainAxisSpacing: 50.0,
          // Внутреннее поле GridView
          padding: EdgeInsets.all(10.0),
          // Количество виджетов в строке
          crossAxisCount: 4,
          // Отношение ширины дочернего виджета к высоте
          childAspectRatio: 2.0,
          // Список дочерних виджетов
            children: <Widget> [
              ElevatedButton(onPressed:(){textController.text = textController.text + "1";}, child: Text("1"),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "2";}, child: Text("2"),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "3";}, child: Text("3"),),
              ElevatedButton(onPressed:(){
                number1 = int.tryParse(textController.text);
                function = 1;
                setState((){
                  textController.clear();
                }
                );
              }, child: Text("+"),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "4";}, child: Text("4"),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "5";}, child: Text("5"),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "6";}, child: Text("6"),),
              ElevatedButton(onPressed:(){
                number1 = int.tryParse(textController.text);
                function = 2;
                setState((){
                  textController.clear();
                }
                );
              }, child: Text("-"),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "7";}, child: Text("7"),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "8";}, child: Text("8"),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "9";}, child: Text("9"),),
              ElevatedButton(onPressed:(){
                number1 = int.tryParse(textController.text);
                function = 3;
                setState((){
                  textController.clear();
                }
                );
              }, child: Text("*"),),
              ElevatedButton(onPressed:(){textController.text = "";
              number1 = null;
              number2 = null;
              result = null;
              resultResult = null;
              function = null;
                }, child: Text("C"),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "0";}, child: Text("0"),),
              ElevatedButton(onPressed:(){
                number1del = double.tryParse(textController.text);
                function = 4;
                setState((){
                  textController.clear();
                }
                );
              }, child: Text("/"),),
              ElevatedButton(onPressed:(){
                number2 = int.tryParse(textController.text);
                number2del = double.tryParse(textController.text);
                if (function == 1) {
                 result = (number1! + number2!);
                 resultResult = result.toString();
                 setState((){
                   textController.clear();
                   textController.text = resultResult!;
                 }
                 );
                } else if (function == 2){
                  result = (number1! - number2!);
                  resultResult = result.toString();
                  setState((){
                    textController.clear();
                    textController.text = resultResult!;
                  }
                  );
                } else if (function == 3) {
                  result = (number1! * number2!);
                  resultResult = result.toString();
                  setState((){
                    textController.clear();
                    textController.text = resultResult!;
                  }
                  );
                } else if (function == 4){
                  resultDel = (number1del! / number2del!);
                  resultResult = resultDel.toString();
                  setState((){
                    textController.clear();
                    textController.text = resultResult!;
                  }
                  );
                }
              }, child: Text("="),),

            ],
        )


        )
    );
  }
}


