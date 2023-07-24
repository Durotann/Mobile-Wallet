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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                height: Adaptive.h(24),
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
                            borderSide: BorderSide(
                                color: Color.fromRGBO(123, 97, 255, 1))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(47, 60, 80, 1))),
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
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(123, 97, 255, 1))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(47, 60, 80, 1))),
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
                  ],
                ),
              ),
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
