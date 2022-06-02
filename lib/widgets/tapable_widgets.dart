import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectInterest extends StatelessWidget {
  final String text;
  final Function onClick;
  final double btnHeight;
  double? btnWidth;
  final double borderRadius;

  SelectInterest(
      {Key? key,
      required this.text,
      required this.onClick,
      required this.btnHeight,
      required this.borderRadius,
      this.btnWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnWidth,
      height: btnHeight,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: Colors.black87,
          // minimumSize: const Size(double.maxFinite, 52),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
        ),
        onPressed: () {
          return onClick();
        },
        child: Text(
          text,
          style: GoogleFonts.nunitoSans(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
