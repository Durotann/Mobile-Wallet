import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:walletapp/domain/widgets/homedown.dart';
import 'package:walletapp/domain/widgets/hometop.dart';
import 'package:walletapp/domain/widgets/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(123, 97, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25,
              foregroundColor: Colors.black,
            ),
            SizedBox(
              width: Adaptive.w(3),
            ),
            Column(
              children: [
                TextF(
                    color: Colors.white,
                    text: "HELLO!",
                    fsize: 12,
                    fweight: FontWeight.w400),
                TextF(
                    color: Colors.white,
                    text: "name",
                    fsize: 16,
                    fweight: FontWeight.w600),
              ],
            ),
          ],
        ),
        actions: [],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 24,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              HomeTop(),
              HomeBot(),
            ],
          ),
        ),
      ),
    );
  }
}
