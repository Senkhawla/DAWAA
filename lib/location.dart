import 'dart:collection';
import 'dart:io';
import 'dart:ui';
import 'package:myapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'dart:math' as math;
import 'dart:math' as math;
import 'package:image_picker/image_picker.dart';
import 'package:myapp/login_page.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

 
class Location extends StatefulWidget {
  const Location({ Key? key }) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
var _latitude ="";
var _longtitude ="";
var _altitude ="";
var _speed ="";
var _address ="";


Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}


Future<void> _updatePosition() async {
  Position pos = await _determinePosition();
  List pm = await placemarkFromCoordinates(pos.latitude,pos.longitude);
  setState(() {
    _latitude = pos.latitude.toString();
    _longtitude = pos.longitude.toString();;
    _altitude =pos.altitude.toString();;
    _speed =pos.speed.toString();;
    _address = pm[0].toString();
  });
}







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,  
                  children: [
                   Text('your last location is : '),
                   Text('Latitude :  '+ _latitude),
                   Text('Longtitude :  '+ _longtitude),
                   Text('Altitude :  '+ _altitude),
                   Text('Speed :  '+ _speed),
                   Text('Adress :  '+ _address),



                   FloatingActionButton(onPressed: _updatePosition , tooltip: 'Geting GPS position',child: Icon(Icons.change_circle_outlined),)
                  
 ],
                ),
              ),
            );

  }
}
