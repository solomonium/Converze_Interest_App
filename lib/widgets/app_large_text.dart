import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLargeText extends StatelessWidget {
  final double size;
  final String text;
  final Color? color;
  TextTheme? textTheme;

  AppLargeText(
      {Key? key,
      required this.size,
      required this.text,
      this.textTheme,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunitoSans(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
        textStyle: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
