import 'package:my_first_shop/models/event_model.dart';

class Building {
  int id;
  String name;
  String imageUrl;
  String address;
  String zipcode;
  String town;
  String description;
  String group;
  List<Event> events;

  Building(
      {this.id,
      this.name,
      this.imageUrl,
      this.address,
      this.zipcode,
      this.town,
      this.description,
      this.group,
      this.events});
}
