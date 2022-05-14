import 'dart:collection';
import 'dart:io';
import 'dart:ui';
import 'package:myapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math' as math;
import 'dart:math' as math;
import 'package:image_picker/image_picker.dart';
import 'package:myapp/login_page.dart';
import 'package:myapp/map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Page3 extends StatefulWidget {
  const Page3({ Key? key }) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

 String? selectedItem ='Alger' ;
List wilaya = ['Alger','Chlef','Oran','Sidi Bel Abbes'];

String? selectedItembd ='Chlef' ;
List bd = ['Chlef','Chettia','Oued fodda','Tenes'];

String? selectedItemc ='Hay Horia' ;
List cd = ['Hay Horia','Chorfa'];

bool value = false;
bool valuee = false;


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


 static const _initialCameraPosition = CameraPosition(target: LatLng(37.42796133580664, -122.085749655962),zoom: 11.5);


late GoogleMapController _googleMapController  ;

  @override

  void dispose(){
    _googleMapController.dispose();
    super.dispose() ;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          
                  children: [
                  
                  
                  TabBar(tabs: [
                    Tab(text: 'Manual location',),
                    Tab(text: 'GPS location',)
                  ],),

                  TabBarView(children: [
                  


                   





                            ]
                        ),

                  
                  
                  
                  


                   Container(
                      
                        margin: EdgeInsets.only(left: 20,right: 20,top: 50),

                           child: Container(
                             
                             decoration: BoxDecoration(border: Border(bottom: BorderSide(color: main_green,width: 3)),),
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Text(
                          "Location settings",
                                style: TextStyle(
                                fontFamily : 'fonts/Nunito-Regular.ttf',
                                color: main_green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                
                          ),
                               ),
                             ),
                           ),
                        ),
                  
  Container(
                      
                        margin: EdgeInsets.only(left: 0,right: 200,top: 30),

                           child: Container(
                             
                             decoration: BoxDecoration(border: Border(bottom: BorderSide(color: writing_green,width: 3)),),
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Text(
                                 "Manual location",
                                style: TextStyle(
                                fontFamily : 'fonts/Nunito-Regular.ttf',
                                color: writing_green,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                
                          ),
                               ),
                             ),
                           ),
                        ),





                    


                  Container(

                        
                      margin: EdgeInsets.only(left: 20,right: 20,top: 20),

                      decoration: BoxDecoration(
        
                        
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: Offset(6, 6), // changes position of shadow
                          ),
                        ],
                        
                      ),
                      
                      child: DropdownButtonHideUnderline(
                        child: Padding( 
                          padding: const EdgeInsets.only(left: 20, right: 20),
                             child: DropdownButton<String>(
                        underline: SizedBox(),

                        itemHeight: null,
                        isExpanded: true,
                       value: selectedItem,
                       style: TextStyle(color: writing_green,fontSize: 16),
                       onChanged: (item){
                         setState(() {
                           selectedItem = item;
                         });
                       },
                       items: wilaya.map((item){
                       return DropdownMenuItem<String>(
                         value: item,
                         child: new Align(alignment: Alignment.centerLeft, child: Text(item)),
                        
                       );
                           }).toList(),
                      ),

                      
                    ),
                      ),
                      ),





                  Container(

                        
                      margin: EdgeInsets.only(left: 20,right: 20,top: 20),

                      decoration: BoxDecoration(
        
                        
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: Offset(6, 6), // changes position of shadow
                          ),
                        ],
                        
                      ),
                      
                      child: DropdownButtonHideUnderline(
                        child: Padding( 
                          padding: const EdgeInsets.only(left: 20, right: 20),
                             child: DropdownButton<String>(
                        underline: SizedBox(),

                        itemHeight: null,
                        isExpanded: true,
                       value: selectedItembd,
                      style: TextStyle(color: writing_green,fontSize: 16),
                       onChanged: (item){
                         setState(() {
                           selectedItembd = item;
                         });
                       },
                       items: bd.map((item){
                       return DropdownMenuItem<String>(
                         value: item,
                         child: new Align(alignment: Alignment.centerLeft, child: Text(item)),
                        
                       );
                           }).toList(),
                      ),

                      
                    ),
                      ),
                      ),


                  
                
                      Container(

                        
                      margin: EdgeInsets.only(left: 20,right: 20,top: 20),

                      decoration: BoxDecoration(
        
                        
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: Offset(6, 6), // changes position of shadow
                          ),
                        ],
                        
                      ),
                      
                      child: DropdownButtonHideUnderline(
                        child: Padding( 
                          padding: const EdgeInsets.only(left: 20, right: 20),
                             child: DropdownButton<String>(
                        underline: SizedBox(),

                        itemHeight: null,
                        isExpanded: true,
                       value: selectedItemc,
                       
                       style: TextStyle(color: writing_green,fontSize: 16 ),
                       onChanged: (item){
                         setState(() {
                           selectedItemc = item;
                         });
                       },
                       items: cd.map((item){
                       return DropdownMenuItem<String>(
                         value: item,
                         child: new Align(alignment: Alignment.centerLeft, child: Text(item)),
                        
                       );
                           }).toList(),
                      ),

                      
                    ),
                      ),
                      ),

                  


                     Container(
                      
                        margin: EdgeInsets.only(left: 0,right: 200,),

                           child: Container(
                             
                             decoration: BoxDecoration(border: Border(bottom: BorderSide(color: writing_green,width: 3)),),
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Text(
                                 "GPS location",
                                style: TextStyle(
                                fontFamily : 'fonts/Nunito-Regular.ttf',
                                color: writing_green,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                
                          ),
                               ),
                             ),
                           ),
                        ),




                  
                     Column(
                       children: [
                        /* Container(
                           height: 280,
                           width: 300,
                          margin: EdgeInsets.only(left: 20,right: 20,top: 20, bottom: 20),
                          decoration: BoxDecoration(
                           

                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 7,
                                offset: Offset(6, 6), // changes position of shadow
                              ),
                            ],
                            
                          ),
                           
                           child: */ 
                           Container(
                             height: 340,
                             width: 340,
                             margin: EdgeInsets.only(top: 20,bottom: 20),
                            
                             child:
                             Stack(
                               children : [
                           GoogleMap(
                                myLocationButtonEnabled: false,
                                zoomControlsEnabled: false,
                                initialCameraPosition: _initialCameraPosition,
                                onMapCreated: (controller) => _googleMapController = controller , ),
                          
                    



                      FloatingActionButton(onPressed: () => _googleMapController.animateCamera(CameraUpdate.newCameraPosition( _initialCameraPosition)) , 
                      tooltip: 'Getting your GPS position',
                      child: Icon(Icons.center_focus_strong),),
                       ]
                           )
                           )
                       ],
                     ), 
                  ],
                ),
              ),
            );

  }
}