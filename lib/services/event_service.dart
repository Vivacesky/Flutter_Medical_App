import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://06693306e0af.ngrok.io";

class EventService {
  static Future getEvents() {
    var url = "$baseUrl/events";
    return http.get(url);
  }

  static Future getEventsByBuildingId(String buildingId) {
    var url = "$baseUrl/events/$buildingId";
    return http.get(url);
  }
}
