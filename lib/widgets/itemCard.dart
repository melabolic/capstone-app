import 'package:flutter/material.dart';
import 'package:capstone_app/models/food_items_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ItemCards extends StatelessWidget {
  final _bodyStyle = GoogleFonts.montserrat(
    textStyle: TextStyle(fontSize: 20),
  );
  final _subtitleStyle = GoogleFonts.esteban(
    textStyle: TextStyle(
      fontSize: 12.0,
      color: Colors.grey.shade600,
    ),
  );
  final _subtitle2Style = GoogleFonts.esteban(
    textStyle: TextStyle(
      fontSize: 12.0,
      color: Colors.grey.shade600,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
    ),
  );

  String _dateToString(String date) {
    return DateFormat.yMMMd().format(DateTime.parse(date));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      height: height - 140,
      child: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTileTheme(
            style: ListTileStyle.list,
            child: Container(
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
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
              margin: EdgeInsets.only(bottom: 12.0),
              child: ListTile(
                title: Text("${foodItems[index].name}", style: _bodyStyle),
                // using ${} simply 
                subtitle: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "Expiry:\t\t",
                        style: _subtitle2Style,
                      ),
                      TextSpan(
                          text: _dateToString(foodItems[index].expiryDate),
                          style: _subtitleStyle),
                    ],
                  ),
                ),
                trailing: Icon(Icons.delete),
              ),
            ),
          );
        },
      ),
    );
  }
}
