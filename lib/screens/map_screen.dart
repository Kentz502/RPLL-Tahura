import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final LatLng _defaultLocation = LatLng(-6.899517, 107.622478); // Lokasi STMIK LIKMI
  LatLng? _markerLocation; // Lokasi marker yang akan ditampilkan saat klik tombol
  late final MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
  }

  /// Tambahkan marker untuk lokasi tertentu
  List<Marker> _addMarkers() {
    final spots = [
      {
        "title": "Pintu Masuk Utama Tahura",
        "position": LatLng(-6.858293, 107.630616),
      },
      {"title": "Curug Omas", "position": LatLng(-6.8350332, 107.6581357)},
      {"title": "Goa Jepang", "position": LatLng(-6.856518, 107.632865)},
      {"title": "Goa Belanda", "position": LatLng(-6.854471, 107.637774)},
      {"title": "Jembatan Gantung", "position": LatLng(-6.8390, 107.6225)},
      {"title": "Monumen Ir. H. Djuanda", "position": LatLng(-6.857481, 107.629433)},
      {"title": "Batu Hoe", "position": LatLng(-6.839175, 107.647933)},
      {"title": "Batu Batik", "position": LatLng(-6.8422229, 107.6482683)},
      {"title": "Pintu Masuk Maribaya", "position": LatLng(-6.8311627, 107.6509174)},
    ];

    // Tambahkan marker lokasi saat ini (jika sudah diatur)
    if (_markerLocation != null) {
      spots.add({"title": "Lokasi Awal", "position": _markerLocation!});
    }

    return spots.map((spot) {
      return Marker(
        width: 80.0,
        height: 80.0,
        point: spot["position"] as LatLng,
        builder: (ctx) => Icon(
          Icons.location_pin,
          color: spot["title"] == "Lokasi Awal" ? Colors.blue : Colors.red,
          size: 40.0,
        ),
      );
    }).toList();
  }

  /// Pindahkan peta ke lokasi default dan tambahkan marker
  void _moveToDefaultLocation() {
    setState(() {
      _markerLocation = _defaultLocation; // Atur lokasi marker
    });
    _mapController.move(_defaultLocation, 17.0); // Pindahkan peta ke lokasi default
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map - Tahura'),
      ),
      body: FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          center: _defaultLocation, // Titik pusat awal peta
          zoom: 17.0,
          maxZoom: 18.0,
          minZoom: 16.0,
          interactiveFlags: InteractiveFlag.drag | InteractiveFlag.pinchZoom,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: const ['a', 'b', 'c'],
          ),
          MarkerLayer(markers: _addMarkers()), // Tambahkan marker layer
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _moveToDefaultLocation,
        child: const Icon(Icons.my_location),
        tooltip: 'Ke Lokasi Awal',
      ),
    );
  }
}
