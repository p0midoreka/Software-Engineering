import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loadingscreenWNP (1:2)
        padding: EdgeInsets.fromLTRB(0*fem, 133*fem, 0*fem, 134*fem),
        width: double.infinity,
        height: 800*fem,
        decoration: BoxDecoration (
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xff60d7fd), Color(0xfffff6db)],
            stops: <double>[0, 0.792],
          ),
        ),
        child: Center(
          // logowtext1563 (3:4)
          child: SizedBox(
            width: 533*fem,
            height: 533*fem,
            child: Image.asset(
              'assets/page-1/images/logowtext-1.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
          );
  }
}