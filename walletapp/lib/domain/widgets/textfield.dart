import 'package:flutter/material.dart';
import 'package:walletapp/domain/widgets/text.dart';

class TextFl extends StatefulWidget {
  const TextFl({super.key});

  @override
  State<TextFl> createState() => _TextFlState();
}

class _TextFlState extends State<TextFl> {
  final _textController = TextEditingController();
  final _textControllerPas = TextEditingController();
  Color? iconcolor = Color.fromRGBO(47, 60, 80, 1);
  bool changeVis = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        height: 210,
        decoration: BoxDecoration(color: Color.fromRGBO(40, 51, 63, 1)),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.left,
              controller: _textController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(47, 60, 80, 1),
                hintText: "Email",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 25),
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
              height: 12,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              obscureText: changeVis,
              controller: _textControllerPas,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(47, 60, 80, 1),
                  hintText: "Password",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 25),
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
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
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
                      width: 12,
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
    );
  }
}
