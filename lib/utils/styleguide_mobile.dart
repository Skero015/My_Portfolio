import 'package:portfolio_webapp/utils/widget_size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeMobile {
  AppThemeMobile._();

  //app colors
  static const Color appBackgroundColor = Color(0xFFFFFFFF);
  static const Color mainColorRed = Color(0xFFB62D1D);
  static const Color mainColorRedLight = Color(0xFFB62D1D);
  static const Color secondaryColorPeach = Color(0xFFDE9B8C);
  static const Color secondaryColorLightPeach = Color(0xFFDE9B8C);
  //font colors
  static const Color regularTextColor = Color(0xFF494949);
  static const Color secondaryTextColor = Color(0xFF8F8F8F);


  static final TextStyle landingLogo = GoogleFonts.yatraOne(
    fontSize: 5.5 * SizeConfig.textMultiplier,
    color: Colors.black.withOpacity(0.8),
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.1,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle landingSlogan = GoogleFonts.juliusSansOne(
    fontSize: 3 * SizeConfig.textMultiplier,
    color: Colors.black.withOpacity(0.8),
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.1,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle landingSloganRed = GoogleFonts.juliusSansOne(
    fontSize: 3 * SizeConfig.textMultiplier,
    color: mainColorRed,
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.1,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle mainBoldHeaderRed = GoogleFonts.roboto(
    fontSize: 4 * SizeConfig.textMultiplier,
    color: mainColorRed,
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.1,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle mainBoldHeaderBlack = GoogleFonts.roboto(
    fontSize: 4 * SizeConfig.textMultiplier,
    color: mainColorRed,
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.1,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle mainBoldHeaderWhite = GoogleFonts.roboto(
    fontSize: 4 * SizeConfig.textMultiplier,
    color: Colors.white,
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.1,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle secondaryBoldHeader = GoogleFonts.roboto(
    fontSize: 3 * SizeConfig.textMultiplier,
    color: Colors.black.withOpacity(0.8),
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.1,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle secondaryBoldHeaderRed = GoogleFonts.roboto(
    fontSize: 3 * SizeConfig.textMultiplier,
    color: Colors.black.withOpacity(0.8),
    height: 1.2,
    wordSpacing: 1.1,
    letterSpacing: 1.1,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle regularText = GoogleFonts.juliusSansOne(
    fontSize: 1.8 * SizeConfig.textMultiplier,
    color: regularTextColor,
    letterSpacing: 1.03,
  );
  static final TextStyle regularTextBold = GoogleFonts.juliusSansOne(
    fontSize: 1.8 * SizeConfig.textMultiplier,
    color: regularTextColor,
    letterSpacing: 1.03,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle regularTextWhite = GoogleFonts.juliusSansOne(
    fontSize: 1.1 * SizeConfig.textMultiplier,
    color: appBackgroundColor,
    letterSpacing: 1.03,
  );
  static final TextStyle regularTextWhiteBold = GoogleFonts.juliusSansOne(
    fontSize: 1.1 * SizeConfig.textMultiplier,
    color: appBackgroundColor,
    letterSpacing: 1.03,
    fontWeight: FontWeight.bold,
  );
}