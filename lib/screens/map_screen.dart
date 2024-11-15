import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: Center(
        child: Image.asset('assets/map.jpg',
        width: 400,
        height: 500,
        fit: BoxFit.cover,
        ),
      ),
    );
  }
}
