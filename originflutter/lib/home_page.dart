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
      appBar: AppBar(title: Text('Demo'),),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container(margin: EdgeInsets.all(5), color: Colors.red, child: Center(child: Text('1', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color: Colors.white),)),)),
            Expanded(child: Row(
              children: [
                Expanded(child: Container(margin: EdgeInsets.only(left: 5, right: 5, bottom: 5), color: Colors.yellow, child: Center(child: Text('2', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color: Colors.white),)),)),
                Expanded(child: Column(
                  children: [
                    Expanded(child: Container(margin: EdgeInsets.only(bottom: 0, right: 5), color: Colors.blue, child: Center(child: Text('3', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color: Colors.white),)),)),
                    Expanded(child: Row(
                      children: [
                        Expanded(child: Container(margin: EdgeInsets.only(top: 5, bottom: 5), color: Colors.pink, child: Center(child: Text('4', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color: Colors.white),)),)),
                        Expanded(child: Container(margin: EdgeInsets.all(5), color: Colors.purple,child: Center(child: Text('5', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color: Colors.white),)),)),
                      ],
                    )),
                  ],
                ))
              ],
            )),
          ],
        ),
      ),
    );
  }
}
