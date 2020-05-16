import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;
  final List<Widget> children=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Demo",style: TextStyle(
          color: Colors.white,
          backgroundColor: Colors.deepPurpleAccent,
          fontSize: 15.0,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapTrapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('Message'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Account'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
          ),

        ],
      ),
    );
  }

  void onTapTrapped(int Index) {
    setState(() {
      _currentIndex=Index;
    });
  }
}
