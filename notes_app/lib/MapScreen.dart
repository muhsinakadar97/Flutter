import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      home: Mapdemo(),
    );
  }
}

class Mapdemo extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<Mapdemo> {
  late GoogleMapController _googleMapController; // Use 'late' to declare the controller

  // Define an initial camera position
  CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.773972, -122.431297),
    zoom: 11.5,
  );

  Set<Marker> _markers = {}; // Create an empty set for markers


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
        actions: [
          // Add a button to the AppBar
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Example: Animate to a specific location (e.g., New York City)
              _goToLocation(40.7128, -74.0060);
            },
          ),
        ],
        
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          _googleMapController = controller;
        },
        initialCameraPosition: _initialCameraPosition,
        mapType: MapType.satellite,
        markers: _markers, // Add markers to the GoogleMap widget
        onLongPress: _addMarker, // Handle long press events
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Example: Animate to a specific location (e.g., New York City)
        _goToLocation(40.7128, -74.0060);
      },
      child: Icon(Icons.location_searching),
    ),
    );
  }

  @override
  void dispose() {
    // Dispose the controller when not needed
    _googleMapController.dispose();
    super.dispose();
  }

 void _addMarker(LatLng latLng) {
    // Create a new marker and add it to the set of markers
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('${latLng.latitude}_${latLng.longitude}'),
          position: latLng,
          infoWindow: InfoWindow(title: 'New Marker', snippet: 'Added by long-press'),
        ),
      );
    });
  }

  void _goToLocation(double latitude, double longitude) {
  final CameraPosition target = CameraPosition(
    target: LatLng(latitude, longitude),
    zoom: 15.0, // You can adjust the zoom level as needed
  );

  _googleMapController.animateCamera(CameraUpdate.newCameraPosition(target));
}
}
