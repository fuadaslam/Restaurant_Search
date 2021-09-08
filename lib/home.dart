import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/cart.dart';
import 'screens/home.dart';
import 'screens/message.dart';
import 'screens/profile.dart';
import 'utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _currentindex = 0;
  final pages=[
    Home(),
    Profile(),
    Cart(),
    Message(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        currentIndex: _currentindex,
        backgroundColor: Color(0xFF3D3D3D),
        type: BottomNavigationBarType.fixed,
        iconSize: 26,
        selectedFontSize: 13,
        selectedItemColor: Color(0xFF53E88B),
        unselectedItemColor: Color(0xFF097D4C),
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Message'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title: Text('Call'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page),
            title: Text('Contact'),
          ),
        ],
        onTap: (index){setState(() {
          _currentindex=index;
        });},
      ),
      body: pages[_currentindex],
    );
  }
}
