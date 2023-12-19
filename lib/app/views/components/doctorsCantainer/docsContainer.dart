
import 'package:doctor_chanelling/app/views/components/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocsContainer extends StatelessWidget {
  DocsContainer({super.key});
  List<Widget> textList = [
    Text('Medical Center',
        style: GoogleFonts.averiaSansLibre(
            textStyle: TextStyle(
          color: dColor,
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ))),
    Text('Modern and qualified doctors will help you feel better every day',
        textAlign: TextAlign.center,
        style: GoogleFonts.averiaSansLibre(
            textStyle: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        )))
  ];
  @override
  Widget build(BuildContext context) {
    return 
      Container(
          height: 150,
          width: 377,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: blueColor),
          margin: EdgeInsets.all(0),
          child: Row(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: textList[0],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                      margin: EdgeInsets.all(0),
                      height: 80,
                      width: 188,
                      child: textList[1])
                ],
              ),
              Stack(children: [
                Padding(
                  padding: EdgeInsets.only(),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      'assets/images/hh.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ])
            ],
          )

          // child: Row(
          //   children: <Widget>[
          //     ListView.builder(itemBuilder: (BuildContext, context) {
          //       textList[0];
          //       textList[1];
          //     })
          
    );
  }
}
