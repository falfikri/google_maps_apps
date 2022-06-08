import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsScreen extends StatefulWidget {
  const GoogleMapsScreen({Key? key}) : super(key: key);
  @override
  _GoogleMapsScreenKaryawanState createState() =>
      _GoogleMapsScreenKaryawanState();
}

class _GoogleMapsScreenKaryawanState extends State<GoogleMapsScreen> {
  final Set<Marker> _markers = {};
  final LatLng _currentPosition =
      const LatLng(0.9211113485406496, 104.45414034206269);
  final LatLng rumahgw =
      const LatLng(0.9371846230619755, 104.5183505076406);
  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: const MarkerId("0.9211113485406496, 104.45414034206269"),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    _markers.add(
      Marker(
        markerId: const MarkerId("0.9371846230619755, 104.5183505076406"),
        position: rumahgw,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Google Maps View",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GoogleMap(
        mapType: MapType.satellite,
        initialCameraPosition: CameraPosition(
          target: _currentPosition,
          zoom: 17.0,
        ),
        markers: _markers,
      ),
    );
  }
}