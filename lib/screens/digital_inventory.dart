import 'package:capstone_app/assets/custom_fonts.dart';
import 'package:capstone_app/widgets/itemCard.dart';
import 'package:flutter/material.dart';

class DigitalInventory extends StatefulWidget {
  @override
  _DigitalInventoryState createState() => _DigitalInventoryState();
}

class _DigitalInventoryState extends State<DigitalInventory> {
  final _headerStyle = headerStyle2;

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
