import 'package:doctor_chanelling/app/views/components/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class Notifications extends StatelessWidget {
const Notifications({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
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
                      child: Text("Notifications",
                          style: GoogleFonts.averiaSansLibre(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: blueColor)),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}