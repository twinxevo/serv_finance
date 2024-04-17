import 'package:fintech_app/screens/ride_screen/globalVars.dart';
import 'package:fintech_app/screens/ride_screen/map_api/fetchRoute.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
//import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';

class MapboxMapTest extends StatefulWidget {
  const MapboxMapTest({super.key});

  @override
  State<MapboxMapTest> createState() => _MapboxMapTestState();
}

class _MapboxMapTestState extends State<MapboxMapTest> {
  MapboxMapController? mapController;
  Symbol? userLocationSymbol;
  //List<LatLng> routeCoordinates = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MapboxMap(
        accessToken: mapboxToken,
        initialCameraPosition: const CameraPosition(
          target: LatLng(5.517138389059632, 6.033950056090037),
          zoom: 5.0,
        ),

        onMapCreated: _onMapCreated,
        //onMapCreated: (MapboxMapController controller) async {
        //mapController = controller;
        //await _showUserLocation();
        //},
      ),
    );
  }

  void _onMapCreated(MapboxMapController controller) async {
    mapController = controller;
    await _showUserLocation();
  }

  Future<void> _showUserLocation() async {
    var permissionStatus = await Permission.locationWhenInUse.request();
    if (permissionStatus.isGranted) {
      var currentLocation = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      mapController?.animateCamera(
        CameraUpdate.newLatLngZoom(
            LatLng(currentLocation.latitude, currentLocation.longitude), 15),
      );

      // Add user location marker
      addUserLocationMarker(
        LatLng(currentLocation.latitude, currentLocation.longitude),
      );

      // Fetch route coordinates from Directions API
      LatLng destinationLocation = LatLng(
          5.517138389059632, 6.033950056090037); // Example destination location
      await fetchRouteCoordinates(
        LatLng(currentLocation.latitude, currentLocation.longitude),
        destinationLocation,
      );

      // Add polyline using route coordinates
      addPolyline();
    } else {
      // Handle permission denied case (e.g., show a dialog explaining why location is needed)
      print('Location permission denied');
    }
  }

  void addUserLocationMarker(LatLng location) {
    mapController?.addSymbol(
      SymbolOptions(
        geometry: location,
        iconImage: 'assets/user_marker1.jpg', // Customize marker icon as needed
        iconSize: 10.5,
        textField: '!✍️!',
        textSize: 25.0,
        textColor: '#FF0000',
      ),
    );
  }

  List<List<double>> decodePolyline(String encoded) {
    List<double> poly = [];
    List<List<double>> polygons = [];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int b, shift = 0, result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += dlng;

      poly.add(lat / 1e5);
      poly.add(lng / 1e5);
    }
    for (int i = 0; i < poly.length; i += 2) {
      polygons.add([poly[i], poly[i + 1]]);
    }
    return polygons;
  }

  void addPolyline() {
    mapController?.addLine(
      LineOptions(
        geometry: routeCoordinates,
        lineColor: '#00008B', // Red color
        lineWidth: 2.0,
      ),
    );
  }

/*
  void addPolyline(LatLng origin, LatLng destination) {
    mapController?.addLine(
      LineOptions(
        geometry: [origin, destination],
        lineColor: '#00008B', // Red color
        lineWidth: 2.0,
      ),
    );
  }*/
}
