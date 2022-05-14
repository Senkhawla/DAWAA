import 'dart:collection';
import 'dart:io';
import 'dart:ui';
import 'package:myapp/colors.dart';
import 'package:myapp/Page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'dart:math' as math;
import 'dart:math' as math;
import 'package:image_picker/image_picker.dart';
import 'package:geolocator/geolocator.dart';


class loginpage extends StatefulWidget {
  const loginpage({ Key? key }) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

// ignore: non_constant_identifier_names
String? selectedItem ='Alger' ;
List wilaya = ['Alger','Chlef','Oran','Sidi Bel Abbes'];

String? selectedItembd ='Chlef' ;
List bd = ['Chlef','Chettia','Oued fodda','Tenes'];

String? selectedItemc ='Hay Horia' ;
List cd = ['Hay Horia','Chorfa'];

bool value = false;
bool valuee = false;


_getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
        source: ImageSource.camera,
        maxWidth: 1800,
        maxHeight: 1800,
    );
    if (pickedFile != null) {
        File imageFile = File(pickedFile.path);
    }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          
                  children: [
                  
                  





                   Container(
                      
                        margin: EdgeInsets.only(left: 20,right: 20,top: 50),

                           child: Container(
                             
                             decoration: BoxDecoration(border: Border(bottom: BorderSide(color: main_green,width: 3)),),
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Text(
                          "Register as a pharmacy",
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
                  

                      




                      GestureDetector(
                      onTap: _getFromCamera ,
                      child: Container(
                      
                      height: 110,   
                      width: 220,   
                      margin: EdgeInsets.only(left: 80,right: 80,top: 20, bottom: 10),
                      decoration: BoxDecoration(
        

                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: matt_green,
                        
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: Offset(6, 6), // changes position of shadow
                          ),
                        ],
                       ),
                       child: Column( 
                                  mainAxisAlignment: MainAxisAlignment.center,  
                                  crossAxisAlignment: CrossAxisAlignment.center,    
                         children:[
                           
                           Icon(Icons.add,color: Colors.white,), 
                           Text(
                             "add picture",
                             style: TextStyle(color: Colors.white, fontSize: 18),

                         
                      )
                           ]
                           )
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
                      
                      child: TextFormField(
                        style: TextStyle(color: writing_green),
                        decoration: InputDecoration(hintText: "Pharmacy name",
                        contentPadding: EdgeInsets.only(top: 15),
                        border: InputBorder.none, 
                        prefixIcon: Icon( Icons.drive_file_rename_outline, color:light_green,)
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
                      
                      child: TextFormField(
                        style: TextStyle(color: writing_green),
                        decoration: InputDecoration(hintText: "Phone number",
                        contentPadding: EdgeInsets.only(top: 15),
                        border: InputBorder.none, 
                        prefixIcon: Icon( Icons.local_phone, color:light_green,)
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
                      
                      child: TextFormField(
                        style: TextStyle(color: writing_green),
                        decoration: InputDecoration(hintText: "Password",
                        contentPadding: EdgeInsets.only(top: 15),
                        border: InputBorder.none, 
                        prefixIcon: Icon( Icons.lock, color:light_green,)
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
                      
                      child: TextFormField(
                        style: TextStyle(color: writing_green),
                        decoration: InputDecoration(hintText: "Location link",
                        contentPadding: EdgeInsets.only(top: 15),
                        border: InputBorder.none, 
                        prefixIcon: Icon( Icons.location_on, color:light_green,)
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
                     padding: EdgeInsets.only(left: 0, top: 3, bottom: 3,),
                      child: CheckboxListTile(
                        activeColor: main_green,
                        title: Text(
                          'Medical analysis',
                          style: TextStyle(color: writing_green,fontSize: 16),
                           ),
                        value: value, 
                        onChanged: (value) => setState(() => 
                          this.value = value!,
                        )
                        
                        ),

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
                       
                      
                    ),






                    Container(
                     padding: EdgeInsets.only(left: 0, top: 3, bottom: 3,),
                      child: CheckboxListTile(
                        activeColor: main_green,
                        title: Text(
                         'CNAS/CASNOS',
                         style: TextStyle(color: writing_green,fontSize: 16),
                           ),
                        value: valuee, 
                        onChanged: (valuee) => setState(() => 
                          this.valuee = valuee!,
                        )
                        
                        ),

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
                       
                      
                    ),






                    Container(
                      child: Row(
                        children:[
                          Container(
                            margin: EdgeInsets.only(left: 20,right: 15,top: 20, bottom: 20),
                            child: Text(
                              "Open from",
                          style: TextStyle(
                          fontFamily : 'fonts/Nunito-Regular.ttf',
                          color: writing_green,
                          fontSize: 18,
                          
                        ),
                         ),                            
                          ),









                          Container(
                            height:50,
                           width:100,
                      margin: EdgeInsets.only(left: 0,right: 0,top: 20, bottom: 20),
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

                      child: Align(
                        alignment: Alignment.center,
                          child: Text(
                           '06:00',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                           fontFamily : 'fonts/Nunito-Regular.ttf',
                          color: writing_green,
                          fontSize: 18,)
                          ) 
                         )
                          ),








                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15,top: 20, bottom: 20),
                            child: Text(
                              "to",
                          style: TextStyle(
                          fontFamily : 'fonts/Nunito-Regular.ttf',
                          color: writing_green,
                          fontSize: 18,
                          
                        ),
                         ),                            
                          ),










                          Container(
                            height:50,
                           width:100,
                          margin: EdgeInsets.only(left: 0,right: 20,top: 20, bottom: 20),
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

                      child: Align(
                        alignment: Alignment.center,
                          child: Text(
                           '23:00',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                           fontFamily : 'fonts/Nunito-Regular.ttf',
                          color: writing_green,
                          fontSize: 18,)
                          )
                          ),
                          )
                        ]
                      ),
                    ),
 



                  Container(
                    height:50,
                    width:100,
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
                       
                       child: ElevatedButton(
                         
                        style: ElevatedButton.styleFrom(

                         primary: title_green,
                          ),
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => Page2()),
                            );
                        }, 
                        child: Text('Register')
                        )

                      
                    ), 
                  ],
                ),
              ),
            );
        
      
        
                     
      }
}