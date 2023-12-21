import 'package:doctor_chanelling/app/views/categories/dentists/dentists.dart';

import 'package:doctor_chanelling/app/views/components/PopularDoctorsWidgets.dart';
import 'package:doctor_chanelling/app/views/components/constants/constants.dart';
import 'package:doctor_chanelling/app/views/components/doctorsCantainer/docsContainer.dart';
import 'package:doctor_chanelling/app/views/doctor_profile_view/doctor_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/healthicons.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/medical_icon.dart';
import 'package:iconify_flutter/icons/ph.dart';

// ignore: must_be_immutable
class homeViewBodyWidgets extends StatelessWidget {
  List stars = [
    "5.6",
    "2.4",
    "4.5",
    "5.5",
    "3.,7",
  ];
  List docNAmes = [
    "Dr.Fillerup",
    "Dr.Astan",
    "Dr. Pill",
    "Dr.Aisha",
    "Dr. Fill",
  ];
  List catNames = [
    "Dentists",
    "gynecologists",
    "urologists"
        "neutologists",
    "psyhiatrists",
    "allergists",
    "cardiologists",
    "pidiatrician",
    "radiologists",
    "gynecologists",
    "endocrinologists",
    "genetists",
    "dermologists",
    "family medicine",
    "children's doctor",
    "otolaryngologist",
  ];
  List<Iconify> catIcons = [
    Iconify(
      Healthicons.tooth_outline,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      MaterialSymbols.female,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      MaterialSymbols.male,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      Healthicons.nerve,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      Healthicons.psychology,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      Healthicons.allergies_outline,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      Ph.activity_duotone,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      MedicalIcon.i_pediatrics,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      MedicalIcon.i_radiology,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      MedicalIcon.i_womens_health,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      Healthicons.diabetes_outline,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      MedicalIcon.genetics,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      MedicalIcon.dermatology,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      MedicalIcon.i_family_practice,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      Healthicons.baby_0203_alt,
      size: 30,
      color: blueColor,
    ),
    Iconify(
      Healthicons.ears_nose_and_throat_outline,
      size: 30,
      color: blueColor,
    ),
  ];
  homeViewBodyWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(children: [
        DocsContainer(),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 20),
          child: Text('Categories',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          child: Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: catIcons.length,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Dentists(),
                              ));
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Center(child: catIcons[index]),
                        ),
                      )
                    ]);
                  })),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Popular Doctor',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(),
          child: Container(
            height: 350,
            child: Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Align(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DoctorProfileView(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 170.0,
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/doctor${index + 1}.jpg'),
                              fit: BoxFit.cover),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 240,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  docNAmes[index].toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  catNames[index].toString(),
                                  style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          Color.fromRGBO(103, 114, 148, 0.80),
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 79,
                                      height: 28,
                                      child: Center(child: Text('Book')),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: blueColor),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Container(
                                      child:
                                          Image.asset('assets/images/star.png'),
                                    ),
                                    Text(stars[index].toString())
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        )
      ]),
    );
  }
}
