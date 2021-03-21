import 'package:flutter/material.dart';
import 'package:tutorial_app/src/pages/data_page.dart';
import 'package:tutorial_app/src/pages/home_page.dart';
import 'package:tutorial_app/src/pages/login_page.dart';
import 'package:tutorial_app/src/pages/register_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'data',
      routes: {
        'home' : (context) => HomePage(),
        'login': (context) => LoginPage(),
        'register' : (context) => RegisterPage(),
        'data' : (context) => DataPage(),
      }
    );
  }
}