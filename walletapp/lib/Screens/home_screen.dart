import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 10, 125, 1),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40.0, right: 20, left: 20),
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: 388,
            height: 66,
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(56, 52, 103, 1)),
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(29, 29, 99, 1),
            ),
            child: GNav(
                gap: 8,
                padding: EdgeInsets.only(top: 9, bottom: 9),
                activeColor: Colors.blue,
                iconSize: 40,
                tabs: [
                  GButton(
                    icon: Icons.home_filled,
                    padding: EdgeInsets.only(left: 31),
                    iconColor: Color.fromRGBO(148, 145, 174, 1),
                  ),
                  GButton(
                    icon: Icons.bookmark_sharp,
                    iconColor: Color.fromRGBO(148, 145, 174, 1),
                  ),
                  GButton(
                    icon: Icons.home_rounded,
                    iconColor: Color.fromRGBO(148, 145, 174, 1),
                  ),
                  GButton(
                    icon: Icons.notifications_outlined,
                    iconColor: Color.fromRGBO(148, 145, 174, 1),
                  ),
                  GButton(
                    icon: Icons.person_outlined,
                    padding: EdgeInsets.only(right: 31),
                    iconColor: Color.fromRGBO(148, 145, 174, 1),
                  ),
                ]),
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          CircleAvatar(
            radius: 60,
            backgroundImage: Image.asset("image/Avatar.png").image,
          ),
        ],
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Hello,",
                style: GoogleFonts.rubik(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Bryce Terner",
                style: GoogleFonts.rubik(
                    fontSize: 16,
                    color: Color.fromRGBO(185, 178, 196, 1),
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 368,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(56, 52, 103, 1),
                    Color.fromRGBO(120, 28, 255, 1),
                    Color.fromRGBO(212, 30, 127, 1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Text(
                        "\$1.924,35",
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 81),
                          child: Text(
                            "5489 7654 3210 7894",
                            style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "04/24",
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
