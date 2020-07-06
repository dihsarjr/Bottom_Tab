import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomTab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomTab'),
      ),
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: null,
        backgroundColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.cyan,
        currentIndex: selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('All'),
          ),
        ],
      ),
    );
  }
}