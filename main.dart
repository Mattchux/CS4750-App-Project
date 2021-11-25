import 'package:flutter/material.dart';

import './next.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Magic!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEFEFEF),
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Music Magic!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _buttonNavigator() {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyNext()),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

          title: Text(widget.title),

          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purpleAccent, Colors.lightBlueAccent, Colors.pinkAccent]
                  )
              )
          )
      ),
      body: Center(


        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('The button belows will take you to a quiz which will use an algorithm to determine new music artists for you to listen to!\n\n\n',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(

              child: Text('\t\tMusic \t\t\tQuiz!'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(90, 90),
                primary: Colors.grey,

              ),
              onPressed: _buttonNavigator,
            ),


          ],
        ),
      ),
    );
  }
}
