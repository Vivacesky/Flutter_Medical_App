import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_shop/models/building_model.dart';
import 'package:my_first_shop/models/event_group.dart';
import 'package:my_first_shop/models/event_model.dart';
import 'package:my_first_shop/widgets/events_list_item.dart';

class BuildingScreen extends StatefulWidget {
  final Building building;
  BuildingScreen({this.building});

  @override
  _BuildingScreenState createState() => _BuildingScreenState();
}

class _BuildingScreenState extends State<BuildingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.zero, children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0)
                  ]),
              child: Hero(
                tag: widget.building.imageUrl,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30.0)),
                  child: Image(
                    image: AssetImage(widget.building.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30.0,
                    color: Colors.white,
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                      widget.building.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.2),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.locationArrow,
                        color: Colors.white70,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        widget.building.town,
                        style: TextStyle(color: Colors.white70, fontSize: 16.0),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.building.description,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Column(
            children: widget.building.events
                .asMap()
                .entries
                .map((event) => EventListItem(event.value))
                .toList())
      ]),
    );
  }
}
