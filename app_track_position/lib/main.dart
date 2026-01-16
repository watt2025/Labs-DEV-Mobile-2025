import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrackingMapPage(),
    );
  }
}

class TrackingMapPage extends StatefulWidget {
  const TrackingMapPage({super.key});

  @override
  State<TrackingMapPage> createState() => _TrackingMapPageState();
}

class _TrackingMapPageState extends State<TrackingMapPage> {
  GoogleMapController? _mapController;
  Marker? _currentMarker;
  StreamSubscription<Position>? _positionStream;

  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng(16.0615636, -16.4264667), 
    zoom: 15,
  );

  @override
  void initState() {
    super.initState();
    _startTracking();
  }

  /// Vérifie permissions + démarre le tracking
  Future<void> _startTracking() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      return;
    }

    _positionStream = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 5, // mètres
      ),
    ).listen((Position position) {
      _updatePosition(position);
    });
  }

  /// Mise à jour du marqueur + caméra
  void _updatePosition(Position position) {
    final LatLng latLng = LatLng(position.latitude, position.longitude);

    setState(() {
      _currentMarker = Marker(
        markerId: const MarkerId("current_position"),
        position: latLng,
        infoWindow: const InfoWindow(title: "Ma position"),
      );
    });

    _mapController?.animateCamera(
      CameraUpdate.newLatLng(latLng),
    );
  }

  @override
  void dispose() {
    _positionStream?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tracking Position"),
        backgroundColor: Colors.blue,
      ),
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        markers: _currentMarker != null
            ? {_currentMarker!}
            : {},
        onMapCreated: (controller) {
          _mapController = controller;
        },
      ),
    );
  }
}
