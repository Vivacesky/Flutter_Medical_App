import 'package:intl/intl.dart';

class Event {
  int id;
  String imageUrl;
  String name;
  String description;
  String town;
  String date;

  Event(
      {this.id,
      this.description,
      this.town,
      this.imageUrl,
      this.name,
      this.date});

  factory Event.fromJson(Map<String, dynamic> json) {
    var date = (json['Date'] as String).split('T')[0];
    var formatter = new DateFormat('d MMMM yyyy');
    var d = DateTime.parse(date);
    String formatted = formatter.format(d);

    return Event(
      id: json['ID'] as int,
      imageUrl: json['ImageUrl'] as String,
      name: json['Name'] as String,
      description: json['Description'] as String,
      town: json['Town'] as String,
      date: formatted,
    );
  }
}
