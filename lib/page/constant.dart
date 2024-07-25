import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(double fs, [Color? Clr, FontWeight? fw]) {
  return GoogleFonts.nunito(
    fontSize: fs,
    color: Clr,
    fontWeight: fw,
  );
}

Color primaryColor = Colors.blue;
Color secondaryColor = Colors.green;
