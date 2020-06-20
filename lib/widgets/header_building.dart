import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_shop/models/building_model.dart';

class HeaderBuilding extends StatelessWidget {
  Building _building;

  HeaderBuilding(Building building) {
    this._building = building;
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        iconTheme: IconThemeData(color: Colors.white),
        pinned: true,
        floating: false,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: Colors.blue,
        expandedHeight: MediaQuery.of(context).size.width * 0.7,
        flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.pin,
          centerTitle: true,
          title: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(this._building.name,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600)),
                ),
                Text(
                  this._building.town,
                  style: TextStyle(color: Colors.white70, fontSize: 12.0),
                ),
              ],
            ),
          ),
          background: Container(
            height: MediaQuery.of(context).size.width * 0.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0)
                ]),
            child: Hero(
              tag: this._building.imageUrl,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30.0)),
                child: Image(
                  image: AssetImage(this._building.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ));
  }
}
