import 'package:doctor_chanelling/app/views/components/constants/constants.dart';
import 'package:doctor_chanelling/app/views/components/text_fields/textFields.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class Psyhiatrists extends StatelessWidget {
  List stars = [
    "5 years expierence",
    "2 years expierence",
    "4 years expierence",
    "5 years expierence",
    "3 years expierence",
  ];
  List docNAmes = [
    "Dr.Fillerup",
    "Dr.Astan",
    "Dr. Pill",
    "Dr.Aisha",
    "Dr. Fill",
  ];

  Psyhiatrists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
                      child: Text("Psyhiatrists",
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
                height: 70,
              ),
              Center(
                child: Container(
                    height: 56,
                    width: 358,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'search..',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    )),
              ),
              //TextField
              //conts
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1000,
                width: 380,
                child: Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return container(
                        textx: docNAmes[index],
                        tt: stars[index],
                        child: Image.asset(
                          'assets/images/doctor${index + 1}.jpg',
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}

class container extends StatelessWidget {
  final String? textx;
  final String? tt;
  final Widget? child;
  const container({
    super.key,
    this.textx,
    this.tt,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        width: 377,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(183, 214, 214, 214)),
        margin: EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 10),
                  child: Text(
                    textx!,
                    style: GoogleFonts.averiaSansLibre(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Container(
                      height: 80,
                      width: 188,
                      child: Column(
                        children: [
                          Text(
                            'psyhiatrists',
                            style: GoogleFonts.averiaSansLibre(
                                color: blueColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Container(
                              child: Text(
                                tt!,
                                style: GoogleFonts.averiaSansLibre(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: blueColor,
                    ),
                    child: Center(
                      child: Text('Book now',
                          style: GoogleFonts.averiaSansLibre(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
            Stack(children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Container(width: 130, height: 120, child: child),
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
