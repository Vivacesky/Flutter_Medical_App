import 'dart:convert';
import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_shop/models/building_model.dart';
import 'package:my_first_shop/screens/building_screen.dart';
import 'package:my_first_shop/services/building_service.dart';

class BuildingCarousel extends StatefulWidget {
  String _groupFilter;

  BuildingCarousel(String filter) {
    this._groupFilter = filter;
  }

  @override
  _BuildingCarouselState createState() => _BuildingCarouselState();
}

class _BuildingCarouselState extends State<BuildingCarousel> {
  List<Building> _originalList = new List<Building>();
  List<Building> _filteredList = new List<Building>();
  bool _isLoading = true;

  initState() {
    super.initState();
    _fetchBuildings();
  }

  _fetchBuildings() {
    BuildingService.getBuildings().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        _originalList =
            list.map((building) => Building.fromJson(building)).toList();
        _isLoading = false;
      });
    });
  }

  Widget _buildItem(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) {
    Building building = _filteredList[index];
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => BuildingScreen(
              building: building,
            ),
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(10.0),
          width: 210.0,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                bottom: 30.0,
                child: Container(
                  height: 110.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            size: 10.0,
                          ),
                          Text(
                            '${building.town}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.0),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '${building.address}',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14.0),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Hero(
                      tag: building.imageUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          height: 180.0,
                          width: 180.0,
                          image: AssetImage(building.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10.0,
                      right: 10.0,
                      bottom: 10.0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            building.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _filteredList = _originalList
        .where((building) => building.group == widget._groupFilter)
        .toList();
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Top Locations',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
              )
            ],
          ),
        ),
        _isLoading
            ? Container(
                height: 300.0,
                child: SpinKitSquareCircle(
                  color: Colors.blue,
                  size: 50.0,
                ),
              )
            : Container(
                height: 300.0,
                child: LiveList(
                    scrollDirection: Axis.horizontal,
                    itemCount: _filteredList.length,
                    itemBuilder: _buildItem))
      ],
    );
  }
}
