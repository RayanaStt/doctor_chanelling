
import 'package:doctor_chanelling/app/views/categories/dentists/dentists.dart';
import 'package:doctor_chanelling/app/views/categories/gine.dart';
import 'package:doctor_chanelling/app/views/categories/nevro.dart';
import 'package:doctor_chanelling/app/views/categories/og.dart';
import 'package:doctor_chanelling/app/views/categories/psyhiatrists.dart';
import 'package:doctor_chanelling/app/views/categories/radiologists.dart';
import 'package:doctor_chanelling/app/views/categories/urologists.dart';

import 'package:doctor_chanelling/app/views/components/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/healthicons.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/medical_icon.dart';
import 'package:iconify_flutter/icons/ph.dart';

class Categories extends StatelessWidget {
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
  List pages = [
    Dentists(),
    Gynecologist(),
    Urologists(),
    Neutologists(),
    Psyhiatrists(),
    Allergists(),
    Radiologists()
  ];
  Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => pages[index] ,));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
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
    );
  }
}
