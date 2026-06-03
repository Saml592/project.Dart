// Basic Dart Syntax
void main() {
  String name = "Flutter Learner";
  int age = 30;
  bool isLearning = true;
  List<String> topics = ["Widgets", "Layouts", "State"];

  print("Hello, my name is $name and I am $age years old.");
  if (isLearning) {
    print("I am currently learning: $topics");
  }

  for (var topic in topics) {
    print("- $topic");
  }
}

// Basic StatelessWidget
import 'package:flutter/material.dart';
,
class SimpleText extends StatelessWidget {
  final String message;

  SimpleText({required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(fontSize: 20.0),
    );
  }
}

// Basic StatefulWidget
class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'You have pushed the button $_counter times:',
        ),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}

// Basic Layout (Column)
class ColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('First Item'),
        Text('Second Item'),
        Text('Third Item'),
      ],
    );
  }
}

// Basic Navigation (Named Routes - requires setup in MaterialApp)
// In main.dart:
// MaterialApp(
//   initialRoute: '/',
//   routes: {
//     '/': (context) => HomeScreen(),
//     '/details': (context) => DetailsScreen(),
//   },
// );

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/details', arguments: 'Some data');
      },
      child: Text('Go to Details'),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('Details Screen')),
      body: Center(child: Text('Data received: $data')),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Flutter Practice',
    home: Center(
      child: CounterApp(),
    ),
  ));
}