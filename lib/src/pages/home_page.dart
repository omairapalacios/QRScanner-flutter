import 'package:flutter/material.dart';
import 'package:qrscanner_app/src/pages/directions_page.dart';
import 'package:qrscanner_app/src/pages/maps_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _callPage(currentIndex),
      bottomNavigationBar: _createBottonNavegationBar(),
    );
  }

  Widget _createBottonNavegationBar() {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.map), title: Text('Mapas')),
          BottomNavigationBarItem(
              icon: Icon(Icons.brightness_5), title: Text('Direcciones'))
        ]);
  }

  Widget _callPage(int actualPage) {
    switch (actualPage) {
      case 0:
        return MapsPage();
        break;
      case 1:
        return DiretionsPage();
        break;
      default:
        return MapsPage();
    }
  }
}
