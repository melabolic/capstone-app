import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyReport extends StatelessWidget {
  double _foodWasted = 4.0;
  final _amountWaste = GoogleFonts.montserratAlternates(
    textStyle: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
  final _header2Style = GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 48,
        height: 160.0,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.white10,
              offset: Offset(0.0, 3.0),
            )
          ],
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 24,
              top: 20,
              child: Text(
                "Amount of Food Wasted:",
                style: _header2Style,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                _foodWasted.toString() + "kg",
                style: _amountWaste,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
