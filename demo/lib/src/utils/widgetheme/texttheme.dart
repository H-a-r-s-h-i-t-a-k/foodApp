import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ttextTheme {
  static TextTheme ltexttheme = TextTheme(
    titleSmall: GoogleFonts.poppins(color: Colors.black54),
    headlineSmall:
        GoogleFonts.montserrat(color: Color.fromARGB(221, 232, 100, 48)),
    headlineLarge: GoogleFonts.montserrat(color: Colors.black87),
    headlineMedium:
        GoogleFonts.poppins(color: Colors.black87, fontWeight: FontWeight.w600),
  );
  static TextTheme dtexttheme = TextTheme(
    titleSmall:
        GoogleFonts.poppins(color: const Color.fromARGB(255, 255, 255, 255)),
    headlineSmall:
        GoogleFonts.montserrat(color: Color.fromARGB(239, 255, 255, 255)),
  );
}
