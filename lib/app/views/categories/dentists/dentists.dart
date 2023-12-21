import 'package:doctor_chanelling/app/views/components/constants/constants.dart';
import 'package:doctor_chanelling/app/views/components/text_fields/textFields.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class Dentists extends StatelessWidget {
  const Dentists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(
          children: <Widget>[
            //AppBar
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Iconify(
                        MaterialSymbols.arrow_back_ios,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 10),
                    child: Text("Dentists",
                        style: GoogleFonts.averiaSansLibre(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: blueColor)),
                  ),
                ],
              ),
            ),
    //end of AppBar
    //TExtField
            SizedBox(
              height: 100,
            ),
            Container(
              child: TextFields(),
            ),
            //TextField
          ],
        )),
      ),
    );
  }
}