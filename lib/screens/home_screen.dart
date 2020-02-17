import 'package:capstone_app/assets/custom_fonts.dart';
import 'package:capstone_app/widgets/reports.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Jie-Wen Lim";
  final _headerStyle = headerStyle1;
  final _header2Style = headerStyle3;

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
