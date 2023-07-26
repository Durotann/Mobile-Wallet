import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/domain/widgets/text.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../service/auth.dart';
import '../view/home_screen.dart';
import '../viewModel/containts.dart';

class TextFl extends StatefulWidget {
  const TextFl({super.key});

  @override
  State<TextFl> createState() => _TextFlState();
}

class _TextFlState extends State<TextFl> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {}
    ;
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {}
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        height: Adaptive.h(31),
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromRGBO(40, 51, 63, 1)),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.left,
              controller: _controllerEmail,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(47, 60, 80, 1),
                hintText: "Email",
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 16, vertical: Adaptive.h(2.5)),
                hintStyle: TextStyle(
                  color: Color.fromRGBO(174, 168, 178, 1),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(123, 97, 255, 1))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(47, 60, 80, 1))),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: Adaptive.h(2),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              obscureText: changeVis,
              controller: _controllerPassword,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(47, 60, 80, 1),
                  hintText: "Password",
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 16, vertical: Adaptive.h(2.5)),
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(174, 168, 178, 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(123, 97, 255, 1))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(47, 60, 80, 1))),
                  border: OutlineInputBorder(),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          if (changeVis == true) {
                            changeVis = false;
                            iconcolor = Color.fromRGBO(123, 97, 255, 1);
                          } else {
                            changeVis = true;
                            iconcolor = Color.fromRGBO(47, 60, 80, 1);
                          }
                        });
                      },
                      icon: Icon(Icons.remove_red_eye_outlined),
                      color: iconcolor,
                    ),
                  )),
            ),
            SizedBox(
              height: Adaptive.h(1.5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Checkbox(
                        activeColor: Color.fromRGBO(123, 97, 255, 1),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: Adaptive.h(2),
                    ),
                    TextF(
                      text: "Remember Me",
                      fsize: 14,
                      fweight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: TextF(
                      color: Color.fromRGBO(123, 97, 255, 1),
                      text: "Forgot Password ?",
                      fsize: 14,
                      fweight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: Adaptive.h(2),
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
                    onPressed: () {
                      createUserWithEmailAndPassword();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
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
          ],
        ),
      ),
    );
  }
}
