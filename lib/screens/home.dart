import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuad_test/Components/ImageCardWithInternal.dart';
import 'package:fuad_test/Components/nearestRestorents.dart';

import 'allRestorents.dart';
import 'search.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                  image: AssetImage(
                                      'assets/images/IconNotifiaction.png'),
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
                                    Colors.black.withOpacity(0.3),
                                    BlendMode.dstATop),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/PromoAdvertising.png"),
                ),
                NearestRestorents(
                  title: 'Nearest Restorents',
                  seealltitle: "See All",
                  horizontalList: <Widget>[
                    ImageCardWithInternal(
                      image: 'assets/images/ResturantImage.png',
                      title: 'Vegan Resto',
                      duration: '12 mins',
                    ),
                    ImageCardWithInternal(
                      image: 'assets/images/RestaurantImage1.png',
                      title: 'HEalthy Food',
                      duration: '8 min',
                    ),
                    ImageCardWithInternal(
                      image: 'assets/images/RestaurantImage2.png',
                      title: 'Some Resto',
                      duration: '7 min',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionTitle(("Popular Menu" != null ) ? "Popular Menu"  : ''),
                      TextButton(child:
                      SeeAllText(("See More"  != null ) ? "See More" : ''),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AllRestorents()));
                        },),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.880,
                    height: MediaQuery.of(context).size.height * 0.120,
                    decoration: BoxDecoration(
                      color: Color(0xFF575757),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/PhotoMenu.png",
                            fit: BoxFit.fitHeight),
                        Text(
                          "Green Noodle",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          r" $42",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
