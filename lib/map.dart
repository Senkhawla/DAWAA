import 'dart:collection';
import 'dart:io';
import 'dart:ui';
import 'package:myapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'dart:math' as math;
import 'dart:math' as math;
import 'package:image_picker/image_picker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

 
class Mapp extends StatefulWidget {
  const Mapp({ Key? key }) : super(key: key);

  @override
  State<Mapp> createState() => _MappState();
}

class _MappState extends State<Mapp> {
  static const _initialCameraPosition = CameraPosition(target: LatLng(37.42796133580664, -122.085749655962),zoom: 11.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCameraPosition,)
      );
           
  }
}
