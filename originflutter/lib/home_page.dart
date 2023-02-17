import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DEMO'),),
      body: Container(
        color: Colors.brown,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.pink,
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(child: Container(color: Colors.red, child: Center(child: Text('A')),)),
                      Expanded(child: Container(color: Colors.green, child: Center(child: Text('B')),)),
                      Expanded(child: Container(color: Colors.greenAccent, child: Center(child: Text('C')),)),
                      Expanded(child: Container(color: Colors.blue, child: Center(child: Text('D')),))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue[900],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(child: Container(color: Color.fromARGB(255,204,195,90), child: Center(child: Text('1')),)),
                    Expanded(child: Container(color: Color.fromARGB(255,122,123,116), child: Center(child: Text('2')),)),
                    Expanded(child: Container(color: Color.fromARGB(255,119,36,182), child: Center(child: Text('3')),)),
                    Expanded(child: Container(color: Color.fromARGB(255,84,20,57), child: Center(child: Text('4')),))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
