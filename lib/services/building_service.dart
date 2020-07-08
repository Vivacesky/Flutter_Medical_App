import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://06693306e0af.ngrok.io";

class BuildingService {
  static Future getBuildings() {
    var url = "$baseUrl/buildings";
    return http.get(url);
  }
}
