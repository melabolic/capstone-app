import 'package:capstone_app/widgets/itemCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DigitalInventory extends StatefulWidget {
  @override
  _DigitalInventoryState createState() => _DigitalInventoryState();
}

class _DigitalInventoryState extends State<DigitalInventory> {
  final _headerStyle = GoogleFonts.montserrat(
      textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 24.0,
                left: 24.0,
              ),
              child: Text(
                "Your Inventory",
                style: _headerStyle,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ItemCards(),
          ],
        ),
      ),
    );
  }
}
