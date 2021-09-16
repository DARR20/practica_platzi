import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'package:platzi_holamundo/profile/profile_trips.dart';
import 'package:platzi_holamundo/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  //
  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  //
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  void onTapTapped(int index) {
    //
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: CupertinoTabBar(
          onTap: onTapTapped,
          activeColor: Colors.indigoAccent,
          inactiveColor: Colors.grey.shade600,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              label: '',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.person),
            )
          ],
        ),
      ),
    );
  }
}
