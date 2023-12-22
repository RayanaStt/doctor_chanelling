import 'package:doctor_chanelling/app/views/components/doctorsCantainer/docsContainer.dart';
import 'package:doctor_chanelling/app/views/components/homeViewBodyWidgets.dart';
import 'package:doctor_chanelling/app/views/notifications/notifications.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50),
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/curcleAva.png'),
                    decoration: BoxDecoration(shape: BoxShape.circle),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 50),
                  child: Text(
                    'Chathura',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150, top: 50),
                  child: InkWell(
                    onTap: () {
                      
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications(),));
                    },
                    child: Container(
                        height: 60,
                        width: 60,
                        child: Icon(
                          Icons.notifications,
                          size: 32,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: SizedBox(
              width: 377,
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintText: "search",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[homeViewBodyWidgets()],
            ),
          )
          // Padding(
          //   padding: const EdgeInsets.only(left: 10, top: 300),
          //   child: Text('Categories',
          //       style: GoogleFonts.rubik(
          //         textStyle: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       )),
          // ),
        ]),
      ),
    );
  }
}
