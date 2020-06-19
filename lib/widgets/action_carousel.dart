import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_shop/models/event_group.dart';
import 'package:my_first_shop/models/event_model.dart';

class ActionCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Recent Events',
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
        Container(
          height: 300.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: events.length,
              itemBuilder: (BuildContext context, int index) {
                Event event = events[index];
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 240.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 30.0,
                        child: Container(
                          height: 110.0,
                          width: 240.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '${event.name}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.0),
                              ),
                              SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                '${event.town}',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14.0),
                              ),
                              SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                '${event.date}',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14.0),
                              ),
                              SizedBox(height: 2.0)
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 180.0,
                            width: 220.0,
                            image: AssetImage(event.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
