/*import 'dart:async';

import 'package:fintech_app/screens/ride_screen/globalVars.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class RidePage extends StatefulWidget {
  const RidePage({super.key});

  @override
  State<RidePage> createState() => _RidePageState();
}

class _RidePageState extends State<RidePage> {
  late final MapboxMapController mapController;
  LatLng? currentLocation;

  @override
  void initState() {
    super.initState();
    _acquireCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapboxMap(
        accessToken: mapboxToken, // Ensure mapboxToken is defined correctly
        onMapCreated: (controller) => mapController = controller,
        minMaxZoomPreference: MinMaxZoomPreference(12.0, 15.0),
        initialCameraPosition: CameraPosition(
          target: currentLocation ??
              const LatLng(6.13303576704866,
                  6.7931237679742695), // Use currentLocation if available
        ),
      ),
    );
  }

  Future<void> _acquireCurrentLocation() async {
    try {
      final location = Location();

      // Check for service and permissions
      if (!await location.serviceEnabled()) {
        await location.requestService();
      }
      var permissionStatus = await location.hasPermission();
      if (permissionStatus == PermissionStatus.denied) {
        permissionStatus = await location.requestPermission();
        if (permissionStatus != PermissionStatus.granted) {
          return; // Respect user's choice if permission denied
        }
      }

      final locationData = await location.getLocation();
      setState(() {
        currentLocation = LatLng(
          locationData.latitude!, // Ensure non-null latitude
          locationData.longitude!, // Ensure non-null longitude
        );
        if (mapController != null) {
          mapController.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(target: currentLocation!),
            ),
          );
        }
      });
    } catch (error) {
      print(error); // Handle errors gracefully
    }
  }
}
*/
/*
import 'package:fintech_app/screens/ride_screen/globalVars.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class RidePage extends StatefulWidget {
  const RidePage({super.key});

  @override
  State<RidePage> createState() => _RidePageState();
}

class _RidePageState extends State<RidePage> {
  late MapboxMapController mapController;
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MapboxMap(
            accessToken: 'YOUR_MAPBOX_ACCESS_TOKEN',
            onMapCreated: (controller) {
              setState(() {
                mapController = controller;
              });
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(37.7749, -122.4194), // Default starting position (San Francisco)
              zoom: 11.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'Search for a location',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    searchLocation(searchController.text);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void searchLocation(String query) async {
    try {
      var response = await mapController.searchMapBoxPlace(query);
      if (response != null && response.features.isNotEmpty) {
        var location = response.features[0].geometry;
        mapController.animateCamera(
          CameraUpdate.newLatLngZoom(
            LatLng(location.latitude, location.longitude),
            14.0,
          ),
        );
      }
    } catch (e) {
      print('Error searching for location: $e');
    }
  }

  @override
  void dispose() {
    mapController.dispose();
    searchController.dispose();
    super.dispose();
  }
}
*/
