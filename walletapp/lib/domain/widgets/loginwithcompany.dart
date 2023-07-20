import 'package:flutter/material.dart';

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
              height: 72,
              width: 98.333,
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
              width: 15.67,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(75, 87, 107, 1)),
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(47, 60, 80, 1),
              ),
              height: 72,
              width: 98.333,
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
              width: 15.67,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(75, 87, 107, 1)),
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(47, 60, 80, 1),
              ),
              height: 72,
              width: 98.333,
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
