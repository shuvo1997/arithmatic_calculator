import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Simple Calculator";
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.purple),
          ),
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
            backgroundColor: Colors.purple,
          ),
          backgroundColor: Colors.white,
          body: CalculatorHomePage()),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({Key? key}) : super(key: key);

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  var sum = 0, num1 = 0, num2 = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Output: $sum",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter number 1"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter number 2"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "ADD",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.purple,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "SUBTRACT",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.purple,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "DIVIDE",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.purple,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "MULTIPLY",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.purple,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "CLEAR",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
