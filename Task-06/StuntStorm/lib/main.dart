import 'package:flutter/material.dart';
import 'package:StuntStorm/screens/page1.dart';
import 'package:StuntStorm/screens/page2.dart';
import 'package:StuntStorm/screens/page3.dart';
import 'package:StuntStorm/screens/page4.dart';
import 'package:StuntStorm/screens/page5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
// #region MaterialApp() attributes
      title: 'Task-06 StuntStorm',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
// #endregion
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
// #region AppBar()
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Welcome',
          style: TextStyle(fontSize: 18),
        ),
      ),
// #endregion
      body: PageView(
        children: [
          page1(),
          page2(),
          page3(),
          page4(),
          page5(),
        ],
      ),

    );
  }
}
