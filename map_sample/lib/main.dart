import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _googleMapController; // Use 'late' to declare the controller

  // Define an initial camera position
  CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.773972, -122.431297),
    zoom: 11.5,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps'),
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          _googleMapController = controller;
        },
        initialCameraPosition: _initialCameraPosition,
        mapType: MapType.satellite,
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the controller when not needed
    _googleMapController.dispose();
    super.dispose();
  }
}
