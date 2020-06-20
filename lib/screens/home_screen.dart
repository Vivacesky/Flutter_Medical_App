import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_shop/widgets/action_carousel.dart';
import 'package:my_first_shop/widgets/building_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.hospital, //Hospital 0
    Icons.local_pharmacy, //Pharma 1
    FontAwesomeIcons.clinicMedical, //Medical centr. 2
    FontAwesomeIcons.syringe //Blood collectpoint 3
  ];

  String getFilter(int index) {
    switch (index) {
      case 0:
        return 'H';
        break;
      case 1:
        return 'P';
        break;
      case 2:
        return 'M';
        break;
      case 3:
        return 'B';
        break;
    }
  }

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30.0)),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 30),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text(
                  'Where would you like to go?',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _icons
                      .asMap()
                      .entries
                      .map((MapEntry map) => _buildIcon(map.key))
                      .toList()),
              SizedBox(
                height: 20.0,
              ),
              BuildingCarousel(getFilter(this._selectedIndex)),
              SizedBox(
                height: 20.0,
              ),
              ActionCarousel(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentTab,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _currentTab = index;
          }),
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          items: [
            BottomNavyBarItem(
              textAlign: TextAlign.center,
              icon: Icon(
                FontAwesomeIcons.home,
                size: 18,
              ),
              title: Text('Home'),
              activeColor: Colors.blue,
            ),
            BottomNavyBarItem(
                textAlign: TextAlign.center,
                icon: Icon(
                  FontAwesomeIcons.search,
                  size: 18,
                ),
                title: Text('Zoeken'),
                activeColor: Colors.blue),
            BottomNavyBarItem(
                textAlign: TextAlign.center,
                icon: Icon(
                  FontAwesomeIcons.userAlt,
                  size: 18,
                ),
                title: Text('Profile'),
                activeColor: Colors.blue),
          ],
        ));
  }
}
