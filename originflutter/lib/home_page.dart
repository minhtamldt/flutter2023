import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String username = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                child: Text('CACUALTE', style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 5, color: Colors.red)
                    ),
                    hintText: 'Input Number A'
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 5, color: Colors.red)
                    ),
                    hintText: 'Input Number B'
                ),
                keyboardType: TextInputType.number,
              ),
              Container(
                  height: 50,
                  child: Center(child: Text('Result: '))),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.all(16.0),
                          textStyle: TextStyle(fontSize: 20)
                      ),
                      onPressed: () {},
                      child: Text('+')),
                  SizedBox(width: 10),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.all(16.0),
                          textStyle: TextStyle(fontSize: 20)
                      ),
                      onPressed: () {},
                      child: Text('-')),
                  SizedBox(width: 10),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.all(16.0),
                          textStyle: TextStyle(fontSize: 20)
                      ),
                      onPressed: () {},
                      child: Text('*')),
                  SizedBox(width: 10),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.all(16.0),
                          textStyle: TextStyle(fontSize: 20)
                      ),
                      onPressed: () {},
                      child: Text('/')),
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}


// child: Padding(
// padding: EdgeInsets.fromLTRB(10,30,10,0),
// child: TextField(
// onChanged: (newString){
// print(newString);
// username = newString;
// },
// keyboardType: TextInputType.text,
// style: TextStyle(
// fontSize: 25
// ),
// decoration: InputDecoration(
// labelText: 'Username',
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10)
// )
// ),
// ),
// ),
