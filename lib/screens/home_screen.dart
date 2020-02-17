import 'package:capstone_app/widgets/reports.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Jie-Wen Lim";
  final _headerStyle = GoogleFonts.montserrat(
      textStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold));
  final _header2Style = GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 20.0,
      color: Colors.deepOrange,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 24.0, top: 24.0, right: 24.0),
              child: Text(
                "Welcome back, \n" + name,
                style: _headerStyle,
                textWidthBasis: TextWidthBasis.longestLine,
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(
                left: 24.0,
              ),
              child: Text(
                "Here's your weekly report:",
                style: _header2Style,
              ),
            ),
            SizedBox(height: 30.0),
            WeeklyReport(),
          ],
        ),
      ),
    );
  }
}
