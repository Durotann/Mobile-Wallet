import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:walletapp/domain/widgets/text.dart';

class HomeBot extends StatefulWidget {
  const HomeBot({super.key});

  @override
  State<HomeBot> createState() => _HomeBotState();
}

class _HomeBotState extends State<HomeBot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Adaptive.h(100),
      decoration: BoxDecoration(
        color: Color.fromRGBO(40, 51, 63, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Adaptive.h(2),
            ),
            Container(
              width: 343,
              height: 125,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(130, 175, 255, 1),
                  Color.fromRGBO(241, 73, 133, 1),
                ]),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 18,
                    ),
                    Row(),
                    TextF(
                        color: Colors.white,
                        text: "Share & Get",
                        fsize: 18,
                        fweight: FontWeight.w500),
                    TextF(
                        color: Colors.white,
                        text:
                            "Get 2x point for every steps,\n only valid for today",
                        fsize: 12,
                        fweight: FontWeight.w400),
                    Container(
                      height: 24,
                      width: 65,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(47, 60, 80, 0.20),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: Adaptive.w(1),
                          ),
                          Icon(
                            Icons.share_outlined,
                            size: 15,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: Adaptive.w(1),
                          ),
                          TextF(
                              color: Colors.white,
                              text: "Share",
                              fsize: 10,
                              fweight: FontWeight.w400)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Adaptive.h(3),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextF(
                    color: Colors.white,
                    text: "History",
                    fsize: 16,
                    fweight: FontWeight.w600),
                MaterialButton(
                  onPressed: () {},
                  child: TextF(
                      color: Color.fromRGBO(123, 97, 255, 1),
                      text: "See all",
                      fsize: 14,
                      fweight: FontWeight.w400),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: Adaptive.h(75),
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: ((context, index) {
                      return ContainerH();
                    })),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerH extends StatefulWidget {
  const ContainerH({super.key});

  @override
  State<ContainerH> createState() => _ContainerHState();
}

class _ContainerHState extends State<ContainerH> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        width: 343,
        height: 72,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromRGBO(47, 60, 80, 0.40)),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Adaptive.h(2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextF(
                      color: Color.fromRGBO(123, 97, 255, 1),
                      text: "27 May",
                      fsize: 14,
                      fweight: FontWeight.w500),
                  Row(
                    children: [
                      TextFM(
                          color: Colors.white,
                          text: "11,120",
                          fsize: 21,
                          fweight: FontWeight.w700),
                      SizedBox(
                        width: Adaptive.w(3),
                      ),
                      TextF(
                          color: Colors.grey,
                          text: "Steps",
                          fsize: 12,
                          fweight: FontWeight.w400),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  TextF(
                      color: Colors.grey,
                      text: "12,4 km",
                      fsize: 12,
                      fweight: FontWeight.w400),
                  SizedBox(
                    width: Adaptive.w(2),
                  ),
                  Container(
                    height: 3,
                    width: 3,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: Adaptive.w(2),
                  ),
                  TextF(
                      color: Colors.grey,
                      text: "1222 kcal",
                      fsize: 12,
                      fweight: FontWeight.w400),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
