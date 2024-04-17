/*import 'package:fintech_app/screens/homePage/homeScreen.dart';
import 'package:fintech_app/screens/ride_screen/globalVars.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
//import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class TestMapPage extends StatefulWidget {
  const TestMapPage({super.key});

  @override
  State<TestMapPage> createState() => _TestMapPageState();
}

class _TestMapPageState extends State<TestMapPage> {
  @override
  Widget build(BuildContext context) {
    MapboxMapController mapController;
    return MapboxMap(
      accessToken: mapboxToken,
      initialCameraPosition: const CameraPosition(
        target: LatLng(5.517138389059632, 6.033950056090037),
        zoom: 12.0,
      ),
      //myLocationEnabled: true,

      /*onMapCreated: (MapboxMapController controller) async {
          bool permissionGranted = await _checkLocationPermission();
          if (!permissionGranted) {
            mapController = controller;
            mapController.animateCamera(CameraUpdate.newLatLngZoom(
                const LatLng(5.517138389059632, 6.033950056090037), 15));
          } else {
            const Center(child: Text('Permission not enabled'));
          }
        }*/

      onMapCreated: (MapboxMapController controller) async {
        bool permissionGranted = await _checkLocationPermission();
        if (permissionGranted) {
          mapController = controller;
          mapController.animateCamera(CameraUpdate.newLatLngZoom(
              const LatLng(5.517138389059632, 6.033950056090037), 15));
        } else {
          //I will put a dialog box here later
          //Dialog Box with the message "Permission Required to proceed"
          //On close, HomeScreen();

          Navigator.push(
              context,
              MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) {
                    return HomeScreen();
                  }));
        }
      },
    );
  }

  Future<bool> _checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }
}*/
