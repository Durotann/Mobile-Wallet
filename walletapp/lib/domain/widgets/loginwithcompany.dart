import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class LogCompany extends StatelessWidget {
  const LogCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Container(
        height: 72,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(75, 87, 107, 1)),
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(47, 60, 80, 1),
              ),
              height: Adaptive.h(40),
              width: Adaptive.w(23),
              child: MaterialButton(
                onPressed: () {},
                child: Center(
                  child: Image.asset(
                    "image/Google-logo.png",
                    scale: 4,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Adaptive.h(1.5),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(75, 87, 107, 1)),
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(47, 60, 80, 1),
              ),
              height: Adaptive.h(40),
              width: Adaptive.w(23),
              child: MaterialButton(
                onPressed: () {},
                child: Center(
                  child: Image.asset(
                    "image/Facebook-logo.png",
                    scale: 4,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Adaptive.w(1.5),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(75, 87, 107, 1)),
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(47, 60, 80, 1),
              ),
              height: Adaptive.h(40),
              width: Adaptive.w(23),
              child: MaterialButton(
                onPressed: () {},
                child: Center(
                  child: Image.asset(
                    "image/Twitter.png",
                    scale: 4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
