import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_application_maps/app/ui/pages/home/paint.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController();

  final Map<MarkerId, Marker> _makers = Map();
  final _initialCameraPosition = const CameraPosition(
      target: LatLng(13.345615260817466, -88.43749858438969), zoom: 50);
  _onTap(LatLng position) async {
    final markerId = MarkerId(_makers.length.toString());

    final maker = Marker(
        markerId: markerId,
        position: position,
        anchor: Offset(0.5, 0.5),
        infoWindow: InfoWindow(
          title: 'Te lo llevo sv',
          snippet: 'Sucursal centro Usulutan',
        ));
    setState(() {
      _makers[markerId] = maker;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        onMapCreated: _controller.onMapCreated,
        initialCameraPosition: _initialCameraPosition,
        markers: Set.of(_makers.values),
        onTap: _onTap,
      ),
    );
  }
}
