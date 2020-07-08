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

  factory Building.fromJson(Map<String, dynamic> json) {
    return Building(
      id: json['ID'] as int,
      name: json['Name'] as String,
      imageUrl: json['ImageUrl'] as String,
      address: json['Address'] as String,
      zipcode: json['Zipcode'] as String,
      town: json['Town'] as String,
      description: json['Description'] as String,
      group: json['Group'] as String,
      events: [],
    );
  }
}
