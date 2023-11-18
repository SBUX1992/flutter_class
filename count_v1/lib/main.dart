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
  int number = 0;

  void incrementNumber() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "계산기",
      // SafeArea 디바이스 보호(끝부분 정리)
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    '$number',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: incrementNumber,
                        child: Container(
                          child: Center(
                            child: Text("1"),
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("2이 눌렸습니다.");
                        },
                        child: Container(
                          child: Center(
                            child: Text("2"),
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("3이 눌렸습니다.");
                        },
                        child: Container(
                          child: Center(
                            child: Text("3"),
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌렸습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("CA"),
                          ),
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌렸습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("4"),
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌렸습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("5"),
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌려졌습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("6"),
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌려졌습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("+"),
                          ),
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌려졌습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("7"),
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌려졌습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("8"),
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌려졌습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("9"),
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌려졌습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("-"),
                          ),
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌려졌습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("0"),
                          ),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print("버튼이 눌려졌습니다");
                        },
                        child: Container(
                          child: Center(
                            child: Text("="),
                          ),
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
