import 'package:flutter/material.dart';

import 'package:qrscanner_app/src/pages/directions_page.dart';
import 'package:qrscanner_app/src/pages/maps_page.dart';

import 'package:barcode_scan/barcode_scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: () {},
          )
        ],
      ),
      body: _callPage(currentIndex),
      bottomNavigationBar: _createBottonNavegationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_center_focus),
        onPressed: _scanQR,
        backgroundColor: Theme.of(context).primaryColor,
      ),
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
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapas'),
          BottomNavigationBarItem(
              icon: Icon(Icons.brightness_5), label: 'Direcciones')
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

/* Future: http: https://github.com/omairapalacios */
/* Future: geo:40.649256132187084,-73.9551295324219
 */

  _scanQR() async {
    String futureString = '';

   /*  try {
      futureString = await BarcodeScanner.scan();
    } catch (e) {
      futureString = e.toString();
    }

    print('Future: $futureString');

    if (futureString != null) {
      print('tenemos info');
    } */
  }
}
