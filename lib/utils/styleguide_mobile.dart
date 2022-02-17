import 'package:portfolio_webapp/utils/widget_size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeMobile {
  AppThemeMobile._();

  //app colors
  static const Color appBackgroundColor = Color(0xFFFFFFFF);
  static const Color mainColor = Color(0xFFE8DED1);
  static const Color secondaryColor = Color(0xFFFAF0E6);
  static const Color mainColorRed = Color(0xFFB62D1D);
  static const Color mainColorRedLight = Color(0xFFB62D1D);
  static const Color secondaryColorPeach = Color(0xFFDE9B8C);
  static const Color secondaryColorLightPeach = Color(0xFFDE9B8C);
  //font colors
  static const Color regularTextColor = Color(0xFF494949);
  static const Color secondaryTextColor = Color(0xFF8F8F8F);


  static final TextStyle name = GoogleFonts.rokkitt(
    fontSize: 28,
    color: Colors.black.withOpacity(0.8),
    height: 1.2,
    wordSpacing: 1.2,
    letterSpacing: 1.1,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle hello = GoogleFonts.rokkitt(
    fontSize: 120,
    color: Colors.black.withOpacity(0.8),
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.1,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle heading = GoogleFonts.montserrat(
    fontSize: 30,
    color: Colors.black.withOpacity(0.8),
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.2,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle subheading = GoogleFonts.montserrat(
    fontSize: 20,
    color: Colors.black.withOpacity(0.8),
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.1,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle regularText = GoogleFonts.poppins(
    fontSize: 16,
    color: regularTextColor,
    letterSpacing: 1.03,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle regularTextHovered = GoogleFonts.poppins(
    fontSize: 16,
    color: Colors.blue,
    letterSpacing: 1.03,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle regularTextBold = GoogleFonts.poppins(
    fontSize: 16,
    color: regularTextColor,
    letterSpacing: 1.03,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle regularTextWhite = GoogleFonts.poppins(
    fontSize: 16,
    color: appBackgroundColor,
    letterSpacing: 1.1,
  );
  static final TextStyle regularTextWhiteBold = GoogleFonts.poppins(
    fontSize: 16,
    color: appBackgroundColor,
    letterSpacing: 1.1,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle regularTextLight = GoogleFonts.poppins(
    fontSize: 14,
    color: regularTextColor,
    letterSpacing: 1.03,
    fontWeight: FontWeight.w200,
  );
}