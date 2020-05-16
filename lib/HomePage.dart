import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;
  final tabs=[
    Center(child: Text('Welcome Home Screen',style: TextStyle(
      color: Colors.deepPurpleAccent,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),),),
    ProfilePage(),
    Center(child: Text('See our profile',style: TextStyle(
      color: Colors.deepPurpleAccent,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),),),
    Center(child: Text('Check our Account Details',style: TextStyle(
      color: Colors.deepPurpleAccent,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),),),
    Center(child: Text('Search Here',style: TextStyle(
      color: Colors.deepPurpleAccent,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),),),
    Center(child: Text('Change Our Settings',style: TextStyle(
      color: Colors.deepPurpleAccent,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),),),
  ];
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
      drawer: Drawer(
        child: new Column(
            children:<Widget>[
              Container(
                  padding: EdgeInsets.only(top:50.0),
                  height: 250.0,
                  width: double.infinity,
                  color: Colors.deepPurpleAccent,
                  child: new Column(
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 100.0,),

                      SizedBox(
                        height: 10.0,
                      ),

                      Text("Archana",style: new TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                      )),

                      Text("archanapunitha30@gmail.com",style: new TextStyle(
                          color: Colors.white54,
                          fontSize: 12.0
                      ))
                    ],
                  )),
              ListTile(
                /*selected: CurrentIndex==1? true:false,
                onTap: () {
                  setCurrentIndex(1);
                },*/
                leading: Icon(Icons.add_box),
                title: new Text("Banking"),
              ),
              ListTile(
               /* selected: CurrentIndex==2? true:false,
                onTap: () {
                  setCurrentIndex(2);
                },*/
                leading: Icon(Icons.payment),
                title: new Text("Payment"),
              ),
              ListTile(
                /*selected: CurrentIndex==3? true:false,
                onTap: () {
                  setCurrentIndex(3);
                },*/
                leading: Icon(Icons.calendar_view_day),
                title: new Text("Calender"),
              ),
              ListTile(
                /*selected: CurrentIndex==4? true:false,
                onTap: () {
                  setCurrentIndex(4);
                },*/
                leading: Icon(Icons.backup),
                title: new Text("Backup"),
              ),
              ListTile(
               /* selected: CurrentIndex==5? true:false,
                onTap: () {
                  setCurrentIndex(5);
                } ,*/
                leading: Icon(Icons.track_changes),
                title: new Text("Tracking"),
              ),
            ]
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home',style: TextStyle(
                fontSize: 12
              ),),
            backgroundColor: Colors.deepPurpleAccent
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile',style: TextStyle(
                fontSize: 12,
              ),),
              backgroundColor: Colors.deepPurpleAccent
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Account',style: TextStyle(
                fontSize: 12,
              ),),
              backgroundColor: Colors.deepPurpleAccent
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search',style: TextStyle(
                fontSize: 12,
              ),),
              backgroundColor: Colors.deepPurpleAccent
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Setting',style: TextStyle(
                fontSize: 12,
              ),),
              backgroundColor: Colors.deepPurpleAccent
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
