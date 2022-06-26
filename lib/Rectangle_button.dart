import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RectangleIconButton extends StatelessWidget {
  RectangleIconButton({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.onClick,
  });
  final String text;
  final fillColor;
  final textColor;
  final textSize;
  final Function onClick;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        text,
        style: GoogleFonts.rubik(
          textStyle: TextStyle(
            fontSize: textSize,
            color: textColor,
          ),
        ),
      ),
      onPressed: () {
        onClick(text);
      },
      constraints: BoxConstraints.tightFor(
        width: 80,
        height: 80,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      fillColor: fillColor,
    );
  }
}
