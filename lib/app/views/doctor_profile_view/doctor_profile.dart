import 'package:doctor_chanelling/app/views/components/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/wi.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: <Widget>[
          SizedBox(
            height: 10,
          ),
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
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Dr.Fillerup',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            'Dentist',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Image.asset('assets/images/st.png'),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
          )
        ]),   
      ),
    );
  }
}
