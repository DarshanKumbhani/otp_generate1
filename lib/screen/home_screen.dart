import 'dart:math';

import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int no = 0;
  List l1=[];
  int i=0;
  int Otp1=0;
  TextEditingController txtno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              child: Text(
                "OTP Generater",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF6DB87)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(90),
              child: TextField(
                controller: txtno,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the OTP length",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffFCF6BA)),
                    )),
              ),
            ),
            Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xffFFE8B8), Color(0xffF6DB87)],
                    ),
                    borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap:  () {
                    no=int.parse(txtno.text);
                    Random rnd = Random();
                    setState(() {
                      Otp1=rnd.nextInt(999999999-100000000);
                    });
                  },
                  child: Text(
                    "Generate OTP",
                    style: TextStyle(fontSize: 25, color: Color(0xff15172B),
                    ),
                  ),
                ),
              ),

            SizedBox(
              height: 90,
            ),
            Container(
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xffFFE8B8),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Text("${(Otp1==0) ? Otp1 : Otp1.toString().substring(0,no)}",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  letterSpacing: 10,
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffFFE8B8), Color(0xffF6DB87)],
                  ),
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Otp1=0;
                    no=0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff15172B),
    );
  }
}
