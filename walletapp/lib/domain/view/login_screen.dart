import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:walletapp/domain/view/home_screen.dart';
import 'package:walletapp/domain/viewModel/containts.dart';
import '../service/auth.dart';
import '../widgets/loginwithcompany.dart';
import '../widgets/text.dart';
import '../widgets/textfield.dart';

class LogScreen extends StatefulWidget {
  const LogScreen({super.key});

  @override
  State<LogScreen> createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: MaterialButton(
          onPressed: () {},
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(40, 51, 63, 1),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: Adaptive.h(3),
            ),
            Image.asset(
              "image/login.png",
              scale: Adaptive.h(1),
            ),
            SizedBox(
              height: Adaptive.h(11),
            ),
            Container(
              child: TextF(
                color: Colors.white,
                text: "Log in",
                fsize: 21,
                fweight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: Adaptive.h(2),
            ),
            TextFl(),
            SizedBox(
              height: Adaptive.h(4),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Divider(
                      color: Color.fromRGBO(75, 87, 107, 1),
                      thickness: 1,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.0),
                    child: TextF(
                        color: Color.fromRGBO(75, 87, 107, 1),
                        text: "Or continue with",
                        fsize: 12,
                        fweight: FontWeight.w400)),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Divider(
                      color: Color.fromRGBO(75, 87, 107, 1),
                      thickness: 1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Adaptive.h(1),
            ),
            LogCompany(),
            SizedBox(
              height: Adaptive.h(4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextF(
                    color: Colors.white,
                    text: "New User?",
                    fsize: 14,
                    fweight: FontWeight.w400),
                TextButton(
                    onPressed: () {},
                    child: TextF(
                        color: Color.fromRGBO(103, 127, 255, 1),
                        text: "Sign Up",
                        fsize: 14,
                        fweight: FontWeight.w400))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
