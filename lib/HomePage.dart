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
          backgroundColor: Colors.blue,
          fontSize: 15.0,
          fontWeight: FontWeight.bold
        ),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            backgroundColor: Colors.blue
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('Message'),
              backgroundColor: Colors.blue
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.blue
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Account'),
              backgroundColor: Colors.blue
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Colors.blue
          ),
        ],
        onTap: (Index){
          setState(() {
            _currentIndex=Index;
          });
        },
      ),
    );
  }
}
