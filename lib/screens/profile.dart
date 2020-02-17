import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  final String name = "Jie-Wen Lim";
  final _nameStyle = GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.person,
                      size: 100.0,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.deepOrange,
                    radius: 80,
                  ),
                  SizedBox(height: 10.0),
                  Text(name, style: _nameStyle),
                ],
              ),
            ),
            Text(
              "Settings",
              textAlign: TextAlign.start,
            ),
            Divider(
              color: Colors.grey,
              thickness: 2.0,
              indent: 24.0,
              endIndent: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
