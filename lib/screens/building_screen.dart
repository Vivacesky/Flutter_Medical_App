import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_shop/models/building_model.dart';
import 'package:my_first_shop/models/event_model.dart';
import 'package:my_first_shop/services/event_service.dart';
import 'package:my_first_shop/widgets/events_list_item.dart';
import 'package:my_first_shop/widgets/header_building.dart';

class BuildingScreen extends StatefulWidget {
  final Building building;
  BuildingScreen({this.building});

  @override
  _BuildingScreenState createState() => _BuildingScreenState();
}

class _BuildingScreenState extends State<BuildingScreen> {
  List<Event> _eventList = new List<Event>();
  bool _isLoading = true;

  initState() {
    super.initState();
    _fetchEvents();
  }

  _fetchEvents() {
    EventService.getEventsByBuildingId(widget.building.id.toString())
        .then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        _eventList = list.map((event) => Event.fromJson(event)).toList();
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          HeaderBuilding(widget.building),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        widget.building.description,
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w400),
                      ),
                      FlatButton.icon(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        color: Colors.blue,
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.mapMarkedAlt,
                          color: Colors.white,
                          size: 16,
                        ),
                        label: Text(
                          'Plan Route',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
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
                  : Column(
                      children: this
                          ._eventList
                          .asMap()
                          .entries
                          .map((event) => EventListItem(event.value))
                          .toList())
            ]),
          )
        ],
      ),
    );
  }
}
