import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calc extends StatefulWidget {
  // const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  var result = "";
  Widget buttonn(var val) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
        ),
        onPressed: () {
          setState(() {
            result += val;
          });
        },
        child: Text(
          val,
          style: TextStyle(color: Colors.black,fontSize: 30),
        ));
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      result = eval.toString();
    });
  }

  cls() {
    setState(() {
      result = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Container(
                child: Text(
                  "Calculator",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              actions: [
                Icon(
                  Icons.notifications,
                  // color: Colors.black,
                  size: 30.0,
                ),
              ],
            ),
            body: SingleChildScrollView(
              
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 300),
                    Text(
                      result,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3
                          ..color = Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(24),
                              ),
                              onPressed: cls,
                              child: Text(
                                "AC",
                                style: TextStyle(color: Colors.amber,fontSize: 30),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(24),
                              ),
                              onPressed: cls,
                              child: Text(
                                "C",
                                style: TextStyle(color: Colors.amber,fontSize: 30),
                              )),
                          // buttonn("AC"),
                          // buttonn("C"),
                          buttonn("%"),
                          buttonn("/"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buttonn("7"),
                          buttonn("8"),
                          buttonn("9"),
                          buttonn("*"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buttonn("4"),
                          buttonn("5"),
                          buttonn("6"),
                          buttonn("+"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buttonn("1"),
                          buttonn("2"),
                          buttonn("3"),
                          buttonn("-"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buttonn("."),
                          buttonn("0"),
                          buttonn("00"),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(24),
                              ),
                              onPressed: output,
                              child: Text(
                                "=",
                                style: TextStyle(color: Colors.red,fontSize: 30),
                              ))
                          // ElevatedButton(onPressed: cls, child: Text("=")),
                          // buttonn("="),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
