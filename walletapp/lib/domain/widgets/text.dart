import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextF extends StatelessWidget {
  final Color? color;
  final String text;
  final FontWeight fweight;
  double fsize;
  double size;
  TextOverflow overflow;
  TextF(
      {super.key,
      this.size = 20,
      required this.color,
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      required this.fsize,
      required this.fweight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: fsize,
        fontWeight: fweight,
      ),
    );
  }
}

class TextFM extends StatelessWidget {
  final Color? color;
  final String text;
  final FontWeight fweight;
  double fsize;
  double size;
  TextOverflow overflow;
  TextFM(
      {super.key,
      this.size = 20,
      required this.color,
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      required this.fsize,
      required this.fweight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: GoogleFonts.bebasNeue(
        color: color,
        fontSize: fsize,
        fontWeight: fweight,
      ),
    );
  }
}
