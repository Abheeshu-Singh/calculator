// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1, num2, sum = 0;
  TextEditingController t1 = TextEditingController(text: "0");
  TextEditingController t2 = TextEditingController();
  void doadd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void dosub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void domul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void dodiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Output: $sum ",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "enter number"),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "enter number"),
                controller: t2,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: doadd,
                    child: Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: dosub,
                    child: Text('-'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: domul,
                    child: Text('*'),
                  ),
                  ElevatedButton(
                    onPressed: dodiv,
                    child: Text('/'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: clear,
                    child: Text('clear'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
