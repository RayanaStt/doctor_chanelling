
import 'package:doctor_chanelling/app/views/components/comtainers/cont.dart';
import 'package:doctor_chanelling/app/views/register_page/login.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 60),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 90,
            ),
            child: Container(
              height: 300,
              width: 200,
              child: Image.asset(
                'assets/images/plus.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Doctor',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF198EB6)),
                ),
                Text(
                  'Channeling',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF198EB6)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 180,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Cont(
                text: 'Get started',
              ))
        ],
      ),
    ));
  }
}
