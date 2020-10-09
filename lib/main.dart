import 'package:flutter/material.dart';
import 'package:qrscanner_app/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QRScanner App',
      initialRoute: 'home', 
      routes: {
        'home': (BuildContext context) => HomePage()
      }     
    );
  }
}