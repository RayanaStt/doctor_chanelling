import 'package:doctor_chanelling/app/views/appointment_page/appointmentPage.dart';
import 'package:doctor_chanelling/app/views/components/comtainers/cont.dart';
import 'package:doctor_chanelling/app/views/components/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/wi.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          //main cont
          Center(
            child: Container(
              height: 380,
              width: 380,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                    color: blueColor),
              ], color: blueColor, borderRadius: BorderRadius.circular(15)),
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: CircleAvatar(
                    maxRadius: 60,
                    minRadius: 60,
                    foregroundImage: AssetImage('assets/images/doctor1.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    child: Column(children: <Widget>[
                      Container(
                        child: Text('Dr.Fillerup',
                            style: GoogleFonts.averiaSansLibre(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text('Dentist',
                            style: GoogleFonts.averiaSansLibre(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Image.asset('assets/images/st.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 50,
                        ),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: 30,
                                child: Iconify(
                                  Ph.chat_circle,
                                  size: 3,
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(139, 199, 199, 199),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.blueGrey.shade500)
                                    ]),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                child: Iconify(
                                  Ph.phone_call,
                                  size: 3,
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(139, 199, 199, 199),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.blueGrey.shade500)
                                    ]),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                child: Iconify(
                                  Ph.video_camera,
                                  size: 3,
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(139, 199, 199, 199),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.blueGrey.shade500)
                                    ]),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Text('P-t: 1200.00s',
                                  style: GoogleFonts.averiaSansLibre(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                )
              ]),
            ),
          ),
          //end of main cont
          SizedBox(
            height: 10,
          ),
          //details
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Text(
                    'Details',
                    style: GoogleFonts.averiaSansLibre(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 333,
                  child: Text(
                      'Dr Fillerup. expierence of work : 5 years. Good and qualified doctor. She finished a medical university in South America and began to work here in 2018.',
                      style: GoogleFonts.averiaSansLibre(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
          ),
          //details
          SizedBox(
            height: 10,
          ),
          //Work Time
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 160),
                  child: Text('Working hours',
                      style: GoogleFonts.averiaSansLibre(
                          fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40,
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
                        color: darkblueColor,
                      ),
                      child: Center(
                        child: Text('9:00 - 11:00',
                            style: GoogleFonts.averiaSansLibre(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          //Work Time
          SizedBox(
            height: 30,
          ),
          //comments
          Padding(
            padding: EdgeInsets.only(right: 100),
            child: Container(
              height: 30,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(147, 139, 203, 255)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Iconify(
                    Ph.chat_circle,
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Comments',
                      style: GoogleFonts.averiaSansLibre(
                          fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          //comments
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppointmentPage(),
                  ));
            },
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
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Back',
              style: GoogleFonts.averiaSansLibre(
                  fontSize: 15, fontWeight: FontWeight.bold),
            ),
          )
        ])),
      ),
    );
  }
}
