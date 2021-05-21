import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wmt_test_app/src/ui/home_page.dart';

class WmtApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wmt Test App',
        theme: ThemeData(
            textTheme: TextTheme(
                bodyText1: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
                bodyText2: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.normal)),
            fontFamily: GoogleFonts.lato().fontFamily),
        home: HomePage());
  }
}
