import 'package:flutter/material.dart';
import 'package:myapp/login_page.dart';
import 'package:myapp/colors.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login page',
      theme: ThemeData(
        fontFamily: 'Nunito',
        unselectedWidgetColor: main_green,
        scaffoldBackgroundColor: Colors.white,
      ),
      
      home: const loginpage(),
    );
  }
}