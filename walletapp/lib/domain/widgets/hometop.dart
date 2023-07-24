import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:walletapp/domain/widgets/text.dart';

class HomeTop extends StatefulWidget {
  const HomeTop({super.key});

  @override
  State<HomeTop> createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Adaptive.h(45),
      decoration: BoxDecoration(
        color: Color.fromRGBO(123, 97, 255, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: Adaptive.h(4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextF(
                        color: Colors.white54,
                        text: "14,000 /",
                        fsize: 12,
                        fweight: FontWeight.w400),
                    TextF(
                        color: Colors.white,
                        text: " 15,000 ",
                        fsize: 20,
                        fweight: FontWeight.w700),
                    TextF(
                        color: Colors.white54,
                        text: "steps",
                        fsize: 12,
                        fweight: FontWeight.w400),
                  ],
                ),
                Row(
                  children: [
                    TextF(
                        color: Colors.yellow,
                        text: "Level 5",
                        fsize: 20,
                        fweight: FontWeight.w700),
                    SizedBox(
                      width: Adaptive.w(1),
                    ),
                    Image.asset(
                      "image/Level badge.png",
                      scale: 4,
                    ),
                  ],
                ),
              ],
            ),
            LinearPercentIndicator(
              percent: 0.8,
              lineHeight: Adaptive.h(1),
              barRadius: Radius.circular(5),
              width: Adaptive.w(81),
              backgroundColor: Colors.white,
              linearGradient: LinearGradient(colors: [
                Color.fromRGBO(185, 111, 255, 1),
                Color.fromRGBO(85, 203, 116, 1)
              ]),
              alignment: MainAxisAlignment.start,
            ),
            SizedBox(
              height: Adaptive.h(2),
            ),
            Container(
              width: double.infinity,
              height: Adaptive.h(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white24),
                  color: Color.fromRGBO(0, 0, 0, 0.09),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(123, 97, 255, 1),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("image/Runner.png"),
                                  scale: 4)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(67, 196, 101, 1)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Adaptive.w(3),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextF(
                                color: Colors.white54,
                                text: "26 May",
                                fsize: 11,
                                fweight: FontWeight.w400),
                            TextF(
                                color: Color.fromRGBO(67, 196, 101, 1),
                                text: "Today",
                                fsize: 14,
                                fweight: FontWeight.w500),
                            TextF(
                                color: Colors.white70,
                                text: "01 : 09 : 44",
                                fsize: 12,
                                fweight: FontWeight.w400),
                          ],
                        ),
                      ],
                    ),
                    Stack(alignment: Alignment.centerLeft, children: [
                      Container(
                        width: 64,
                        height: 64,
                        child: CircularProgressIndicator(
                          strokeWidth: 5,
                          color: Colors.red,
                          value: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "image/mengo.png",
                              scale: 3,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextF(
                                    color: Colors.white,
                                    text: "2345",
                                    fsize: 12,
                                    fweight: FontWeight.w400),
                                Container(
                                  width: 25,
                                  child: Divider(
                                    color: Colors.white60,
                                    thickness: 1,
                                    height: 2,
                                  ),
                                ),
                                TextF(
                                    color: Color.fromRGBO(67, 196, 101, 1),
                                    text: "5000",
                                    fsize: 12,
                                    fweight: FontWeight.w400),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Adaptive.h(2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 163,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.09),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white24),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFM(
                          color: Colors.white,
                          text: "53,524",
                          fsize: 48,
                          fweight: FontWeight.w400),
                      TextF(
                          color: Colors.white70,
                          text: "Steps",
                          fsize: 12,
                          fweight: FontWeight.w400),
                    ],
                  ),
                ),
                Container(
                  width: 163,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.09),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white24),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFM(
                          color: Colors.white,
                          text: "1000",
                          fsize: 48,
                          fweight: FontWeight.w400),
                      TextF(
                          color: Colors.white70,
                          text: "Earned Points",
                          fsize: 12,
                          fweight: FontWeight.w400),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
