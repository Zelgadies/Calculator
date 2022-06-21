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
  double? number1 = null;
  double? number2 = null;
  double? result = null;
  String? resultResult = null;
  int? function = null;
   @override
  Widget build(BuildContext context) {
    var child;
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: TextField(
          style: TextStyle(fontSize: 30,),
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
              ElevatedButton(onPressed:(){textController.text = textController.text + "1";}, child: Text("1", style: TextStyle (
                fontSize: 30,),),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "2";}, child: Text("2", style: TextStyle (
                fontSize: 30,),),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "3";}, child: Text("3", style: TextStyle (
                fontSize: 30,),),),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),),
                onPressed:(){
                number1 = double.tryParse(textController.text);
                function = 1;
                setState((){
                  textController.clear();
                }
                );
              }, child:
              Text("+", style: TextStyle (
                fontSize: 30, //размер текста
                color: Colors.black87,
              ),),
              ),
              ElevatedButton(onPressed:(){textController.text = textController.text + "4";}, child: Text("4", style: TextStyle (
                fontSize: 30,),),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "5";}, child: Text("5", style: TextStyle (
                fontSize: 30,),),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "6";}, child: Text("6", style: TextStyle (
                fontSize: 30,),),),
              ElevatedButton(
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),),
                onPressed:(){
                number1 = double.tryParse(textController.text);
                function = 2;
                setState((){
                  textController.clear();
                }
                );
              }, child: Text("-", style: TextStyle (
                fontSize: 30, //размер текста
                color: Colors.black87,
              ),),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "7";}, child: Text("7", style: TextStyle (
                fontSize: 30,),),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "8";}, child: Text("8", style: TextStyle (
                fontSize: 30,),),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "9";}, child: Text("9", style: TextStyle (
                fontSize: 30,),),),
              ElevatedButton(
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),),
                onPressed:(){
                number1 = double.tryParse(textController.text);
                function = 3;
                setState((){
                  textController.clear();
                }
                );
              }, child: Text("*", style: TextStyle (
                fontSize: 30, //размер текста
                color: Colors.black87,
              ),),),
              ElevatedButton(
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),),
                onPressed:(){textController.text = "";
              number1 = null;
              number2 = null;
              result = null;
              resultResult = null;
              function = null;
                }, child: Text("C", style: TextStyle (
                fontSize: 30, //размер текста
                color: Colors.black87,
              ),),),
              ElevatedButton(onPressed:(){textController.text = textController.text + "0";}, child: Text("0", style: TextStyle (
                fontSize: 30,),),),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),),
                onPressed:(){
                number1 = double.tryParse(textController.text);
                function = 4;
                setState((){
                  textController.clear();
                }
                );
              }, child: Text("/", style: TextStyle (
                fontSize: 30, //размер текста
                color: Colors.black87,
              ),),),
              ElevatedButton(
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),),
                onPressed:(){
                number2 = double.tryParse(textController.text);
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
                  result = (number1! / number2!);
                  resultResult = result.toString();
                  setState((){
                    textController.clear();
                    textController.text = resultResult!;
                  }
                  );
                }
              }, child: Text("=", style: TextStyle (
                fontSize: 30, //размер текста
                color: Colors.black87,
              ),),),
              ElevatedButton(onPressed:(){textController.text = textController.text + ".";}, child: Text(".", style: TextStyle (
                fontSize: 30,),),),

            ],
        )


        )
    );
  }
}
