import 'package:flutter/material.dart';

import '../widgets/loginwithcompany.dart';
import '../widgets/text.dart';
import '../widgets/textfield.dart';

class LogScreen extends StatefulWidget {
  const LogScreen({super.key});

  @override
  State<LogScreen> createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  bool filt = true;

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
      backgroundColor: Color.fromRGBO(40, 51, 63, 1),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Image.asset(
              "image/login.png",
              scale: 4,
            ),
            SizedBox(
              height: 88,
            ),
            TextF(
              color: Colors.white,
              text: "Log in",
              fsize: 21,
              fweight: FontWeight.w700,
            ),
            SizedBox(
              height: 16,
            ),
            TextFl(),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: Color.fromRGBO(123, 97, 255, 1)),
                    onPressed: () {},
                    child: Center(
                      child: TextF(
                        color: Colors.white,
                        text: "Log In",
                        fsize: 18,
                        fweight: FontWeight.w600,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 32,
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
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Divider(
                      color: Color.fromRGBO(75, 87, 107, 1),
                      thickness: 1.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            LogCompany(),
            SizedBox(
              height: 40,
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
