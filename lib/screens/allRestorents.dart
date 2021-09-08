import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuad_test/Components/ImageCardWithInternal.dart';
import 'package:fuad_test/Components/allRestorentsList.dart';
import 'package:fuad_test/Components/nearestRestorents.dart';
import 'package:fuad_test/Components/restorentList.dart';
import 'package:fuad_test/screens/profile.dart';
import 'package:fuad_test/screens/search.dart';

import 'cart.dart';
import 'home.dart';
import 'message.dart';

class AllRestorents extends StatefulWidget {
  const AllRestorents({Key key}) : super(key: key);

  @override
  _AllRestorentsState createState() => _AllRestorentsState();
}

class _AllRestorentsState extends State<AllRestorents> {

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.100,
                                left: MediaQuery.of(context).size.width * 0.1,
                              ),
                              child: Text(
                                "Find Your\nFavorite Food",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.100,
                                left: MediaQuery.of(context).size.width * 0.150,
                              ),
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.05,
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                color: Color(0xFF575757),
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image:
                                  AssetImage('assets/images/IconNotifiaction.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.3), BlendMode.dstATop),
                                image: AssetImage('assets/images/topimg.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.07,
                            padding: EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: Color(0xFF575757),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            SearchScreen()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(
                                    Icons.search,
                                    size: 25.0,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'What do you want to order?',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.150,
                            height: MediaQuery.of(context).size.height * 0.07,
                            padding: EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: Color(0xFF575757),
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/Filter.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                AllRestorentsList(
                  title: 'Popular Restaurants ',
                  seealltitle: "See All",
                  horizontalList: <Widget>[
                    RestoList(
                      image: 'assets/images/ResturantImage.png',
                      title: 'Vegan Resto',
                      duration: '12 mins',
                    ),
                    RestoList(
                      image: 'assets/images/RestaurantImage1.png',
                      title: 'HEalthy Food',
                      duration: '8 min',
                    ),
                    RestoList(
                      image: 'assets/images/RestaurantImage2.png',
                      title: 'Some Resto',
                      duration: '7 min',
                    ),
                    RestoList(
                      image: 'assets/images/RestaurantImage3.png',
                      title: 'Vegan Resto',
                      duration: '12 mins',
                    ),
                    RestoList(
                      image: 'assets/images/RestaurantImage4.png',
                      title: 'Vegan Resto',
                      duration: '12 mins',
                    ),
                    RestoList(
                      image: 'assets/images/RestaurantImage5.png',
                      title: 'Vegan Resto',
                      duration: '12 mins',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

