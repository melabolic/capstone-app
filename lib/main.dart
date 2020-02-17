import 'package:capstone_app/screens/digital_inventory.dart';
import 'package:capstone_app/screens/home_screen.dart';
import 'package:capstone_app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 1;
  final List<Widget> _pages = [
    DigitalInventory(),
    HomeScreen(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // this snipper of code here fixes the orientation of the app to portrait
    // for some reason, this only works here but not the main() function
    // hypothesis: has something to do with making it asynchronous
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: "Digital Inventory System",
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.list,
                size: 24,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
                size: 24,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              title: SizedBox.shrink(),
            ),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: Colors.deepOrange,
          onTap: _onItemTapped,
          elevation: 16.0,
        ),
      ),
    );
  }
}
