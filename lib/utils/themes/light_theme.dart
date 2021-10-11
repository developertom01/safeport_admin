import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';

ThemeData customLightThem(BuildContext context) => ThemeData(
      primaryColor: customBlueColor,
      errorColor: Colors.orange.shade900,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: customWhiteColor,
        primary: customBlueColor,
        error: Colors.orange.shade900,
        background: customWhiteColor,
      ),
      appBarTheme: AppBarTheme(
          color: customWhiteColor,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.grey.shade700)),
      scaffoldBackgroundColor: customWhiteColor,
      textTheme: TextTheme(
        bodyText1: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.bodyText1,
        ),
        bodyText2: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.bodyText2,
        ),
        caption: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.caption,
        ),
        headline6: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.headline6,
        ),
        headline5: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.headline5,
        ),
        headline4: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.headline4,
        ),
        headline3: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.headline3,
        ),
        headline2: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.headline2,
        ),
        headline1: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.headline1,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(GoogleFonts.roboto()),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor.withOpacity(.5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.orange.shade900,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.orange.shade900,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
