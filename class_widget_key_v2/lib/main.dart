import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgetList = [A(), B()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Column(
                children: widgetList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////

class A extends StatefulWidget {
  const A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        color: Colors.orange[300],
        child: Center(
          child: Text("개 사진1"),
        ),
      ),
    );
  }
}

////////////////////////////////////////////

class B extends StatefulWidget {
  const B({super.key});

  @override
  State<B> createState() => _BState();
}

class _BState extends State<B> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        color: Colors.blue[300],
        child: Center(
          child: Text("개 사진2"),
        ),
      ),
    );
  }
}
