import 'package:flutter/material.dart';

import '../widgets/text.dart';

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
          child: Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Color.fromRGBO(40, 51, 63, 1),
      body: Container(
        color: Colors.red,
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
          ],
        ),
      ),
    );
  }
}

class TextFl extends StatefulWidget {
  const TextFl({super.key});

  @override
  State<TextFl> createState() => _TextFlState();
}

class _TextFlState extends State<TextFl> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        height: 155,
        decoration: BoxDecoration(color: Color.fromRGBO(40, 51, 63, 1)),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(174, 168, 178, 1),
                  ),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(123, 97, 255, 1))),
                  suffixIcon: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: Icon(Icons.clear))),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(174, 168, 178, 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(174, 168, 178, 1))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(123, 97, 255, 1))),
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        _textController.clear();
                      },
                      icon: Icon(Icons.clear))),
            ),
          ],
        ),
      ),
    );
  }
}
