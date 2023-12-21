import 'package:doctor_chanelling/app/views/components/calendar/calendar.dart';
import 'package:doctor_chanelling/app/views/components/constants/constants.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class AppointmentPage extends StatelessWidget {
  List times = [
    "12:00",
    "1:00",
    "2:00",
    "3:00",
    "4:00",
    "5:00",
    "6:00",
    "7:00",
  ];
  AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Container(
            child: Column(children: <Widget>[
          //appBar
          Container(
            child: Row(children: <Widget>[
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
                child: Text(
                  'Set an appointment',
                  style: GoogleFonts.averiaSansLibre(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: blueColor),
                ),
              ),
              //
              //     //end of appBar
              //     //calendar
              //  Calendar(),
              //     //end of Calendar
              //     Container(
              //       child: Column(
              //         children: <Widget>[
              //           Text('Arrange Time Slot'),
              //           // Expanded(
              //           //   child: ListView.builder(
              //           //     shrinkWrap: false,
              //           //       itemCount: 8,
              //           //       scrollDirection: Axis.horizontal,
              //           //       itemBuilder: (context, index) {
              //           //         return Container(
              //           //           height: 56,
              //           //           width: 138,
              //           //           decoration: BoxDecoration(
              //           //             color: darkblueColor,
              //           //             borderRadius: BorderRadius.circular(15),
              //           //           ),
              //           //           child: Center(
              //           //             child: Text(times[index].toString(),
              //           //                 style: GoogleFonts.averiaSansLibre(
              //           //                     fontSize: 15, fontWeight: FontWeight.bold)),
              //           //           ),
              //           //         );
              //           //       }),
              //           // )
              //         ],
              //       ),
              //     ),
              //     //end of Time
              //     //Book
              //     SizedBox(
              //       height: 35,
              //     ),
              //     InkWell(
              //       onTap: () {},
              //       child: Container(
              //         width: 340,
              //         height: 50,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(15), color: blueColor),
              //         child: Center(
              //           child: Text("Book an appointment",
              //               style: GoogleFonts.averiaSansLibre(
              //                   fontSize: 20, fontWeight: FontWeight.bold)),
              //         ),
              //       ),
              //     ),
              //     ],
            ]),
          ),
          //end of appbar
          SizedBox(
            height: 20,
          ),
          Calendar(),
          //end
          SizedBox(
            height: 30,
          ),
          //Time
          Padding(
            padding: EdgeInsets.only(),
            child: Container(
              child: Column(children: <Widget>[
                Row(
                  children: [
                    SizedBox(
                      width: 140,
                    ),
                    Text('Select time',
                        style: GoogleFonts.averiaSansLibre(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: blueColor)),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Text('See all',
                          style: GoogleFonts.averiaSansLibre(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: dColor)),
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Text('Recomended',
                      style: GoogleFonts.averiaSansLibre(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: b12)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        height: 56,
                        width: 136,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: blueColor,
                        ),
                        child: Center(
                          child: Text('11:00 - 9:00',
                              style: GoogleFonts.averiaSansLibre(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 56,
                        width: 136,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: blueColor,
                        ),
                        child: Center(
                          child: Text('12:00 - 1:00',
                              style: GoogleFonts.averiaSansLibre(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ),
                      ),

                      //
                      // Container(
                      //   height: 56,
                      //   width: 136,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15),
                      //     color: blueColor,
                      //   ),
                      //   child: Center(
                      //     child: Text('12:00 - 1:00',
                      //         style: GoogleFonts.averiaSansLibre(
                      //             fontSize: 15, fontWeight: FontWeight.bold)),
                      //   ),
                      // ),
                      // Container(
                      //   height: 56,
                      //   width: 136,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15),
                      //     color: blueColor,
                      //   ),
                      //   child: Center(
                      //     child: Text('2:00 - 3:00',
                      //         style: GoogleFonts.averiaSansLibre(
                      //             fontSize: 15, fontWeight: FontWeight.bold)),
                      //   ),
                      // ),
                      // Container(
                      //   height: 56,
                      //   width: 136,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15),
                      //     color: blueColor,
                      //   ),
                      //   child: Center(
                      //     child: Text('4:00 - 5:00',
                      //         style: GoogleFonts.averiaSansLibre(
                      //             fontSize: 15, fontWeight: FontWeight.bold)),
                      //   ),
                      // ),
                      // Container(
                      //   height: 56,
                      //   width: 136,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15),
                      //     color: blueColor,
                      //   ),
                      //   child: Center(
                      //     child: Text('6:00 - 7:00',
                      //         style: GoogleFonts.averiaSansLibre(
                      //             fontSize: 15, fontWeight: FontWeight.bold)),
                      //   ),
                      // ),
                      // Container(
                      //   height: 56,
                      //   width: 136,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15),
                      //     color: blueColor,
                      //   ),
                      //   child: Center(
                      //     child: Text('8:00 - 9:00',
                      //         style: GoogleFonts.averiaSansLibre(
                      //             fontSize: 15, fontWeight: FontWeight.bold)),
                      //   ),
                      // ),
                    ],
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          //end of time
          InkWell(
            onTap: () {},
            child: Container(
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: blueColor),
              child: Center(
                child: Text("Book an appointment",
                    style: GoogleFonts.averiaSansLibre(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ])),
      )),
    );
  }
}
