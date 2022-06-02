import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectInterest extends StatelessWidget {
  final String text;
  final Function onClick;
  final double btnHeight;
  double? btnWidth;
  final double borderRadius;
  final bool visibility;
  Color? textColor;
  Color borderColor;

  SelectInterest(
      {Key? key,
      required this.text,
      required this.onClick,
      required this.btnHeight,
      required this.borderRadius,
      this.btnWidth,
      this.borderColor = Colors.grey,
      this.textColor = Colors.black,
      required this.visibility})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibility,
      child: SizedBox(
        width: btnWidth,
        height: btnHeight,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: borderColor),
            primary: Colors.black87,
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
              color: textColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}
