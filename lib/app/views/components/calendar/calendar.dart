import 'package:doctor_chanelling/app/views/components/constants/constants.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: Text(
          'December        2023',
          style: GoogleFonts.averiaSansLibre(
              fontSize: 25, fontWeight: FontWeight.bold, color: blueColor),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: EdgeInsets.only(left: 70),
        child: Container(
          child: Row(children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  text(
                    text1: 'M',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  text(
                    text1: '29',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  text(
                    text1: '5',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  text(
                    text1: '12',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  text(
                    text1: '19',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  text(
                    text1: '28',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  text(
                    text1: 'T',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  text(
                    text1: '30',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  text(
                    text1: '6',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  text(
                    text1: '13',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  text(
                    text1: '20',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  text(
                    text1: '29',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                child: Column(children: <Widget>[
              text(
                text1: 'W',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: '31',
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 30,
                  height: 30,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: blueColor),
                  child: Center(
                    child: text(
                      text1: '7',
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "14",
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "21",
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "30",
              )
            ])),
            SizedBox(
              width: 10,
            ),
            Container(
                child: Column(children: <Widget>[
              text(
                text1: 'T',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: '1',
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 30,
                height: 30,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: blueColor),
                child: Center(
                    child: text(
                  text1: '8',
                )),
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "15",
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "22",
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "31",
              )
            ])),
            SizedBox(
              width: 10,
            ),
            Container(
                child: Column(children: <Widget>[
              text(
                text1: 'F',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: '2',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: '9',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "16",
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "23",
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "1",
              )
            ])),
            SizedBox(
              width: 10,
            ),
            Container(
                child: Column(children: <Widget>[
              text(
                text1: 'S',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: '3',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: '10',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "17",
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "24",
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "2",
              )
            ])),
            SizedBox(
              width: 10,
            ),
            Container(
                child: Column(children: <Widget>[
              text(
                text1: 'S',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: '4',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: '11',
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "18",
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "25",
              ),
              SizedBox(
                height: 10,
              ),
              text(
                text1: "4",
              )
            ])),
          ]),
        ),
      )
    ]));
  }
}

class text extends StatelessWidget {
  final String? text1;

  text({super.key, this.text1});

  @override
  Widget build(BuildContext context) {
    return Text(
      text1.toString(),
      style: GoogleFonts.averiaSansLibre(
          fontSize: 25, fontWeight: FontWeight.bold, color: dColor),
    );
  }
}
