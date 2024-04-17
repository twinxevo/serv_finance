import 'dart:convert';

import 'package:fintech_app/screens/ride_screen/globalVars.dart';
import 'package:http/http.dart' as http;
import 'package:mapbox_gl/mapbox_gl.dart';

List<LatLng> routeCoordinates = [];
double? distance;
int? duration;

Future<void> fetchRouteCoordinates(LatLng origin, LatLng destination) async {
  const apiKey = mapboxToken;
  final url =
      'https://api.mapbox.com/directions/v5/mapbox/driving/${origin.longitude},${origin.latitude};${destination.longitude},${destination.latitude}?geometries=geojson&access_token=$apiKey';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final decoded = json.decode(response.body);
    final routes = decoded['routes'];
    if (routes != null && routes.isNotEmpty) {
      //distance and time taken
      final route = routes[0];
      distance = route['distance'] / 1000; // Distance in kilometers
      duration = (route['duration'] / 60).round(); // Duration in minutes

      print(distance);
      print(duration);

      final geometry = routes[0]['geometry'];
      final List<dynamic> coordinates = geometry['coordinates'];
      routeCoordinates = coordinates
          .map((coord) => LatLng(coord[1] as double, coord[0] as double))
          .toList();
    }
  }
}
