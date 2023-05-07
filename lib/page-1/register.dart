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
        // registerA5H (96:118)
        width: double.infinity,
        height: 800*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xff60d7fd), Color(0xfffff6db)],
            stops: <double>[0, 0.792],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupocd99T1 (7QcYY3dSczfHecYBtPocd9)
              left: 42*fem,
              top: 81*fem,
              child: Container(
                width: 290*fem,
                height: 511*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // QNw (96:169)
                      left: 0*fem,
                      top: 190*fem,
                      child: Container(
                        width: 276*fem,
                        height: 321*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // DbH (96:132)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 27*fem),
                              child: Text(
                                'РЕГИСТРАЦИЯ:',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 19*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2189999631*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupvayhSU3 (7QcYuY1dqPPQj8RN4mvayH)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                              padding: EdgeInsets.fromLTRB(12*fem, 2*fem, 12*fem, 2*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Text(
                                'Имя',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w300,
                                  height: 1.2189999898*ffem/fem,
                                  color: Color(0xff535353),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupxukfaCs (7QcZ2hUNErJ7kdiRTZxukf)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                              padding: EdgeInsets.fromLTRB(12*fem, 2*fem, 12*fem, 2*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Text(
                                'Email',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w300,
                                  height: 1.2189999898*ffem/fem,
                                  color: Color(0xff535353),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupkc9htsm (7QcZCSh8SYGzAwK6UEKc9H)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                              padding: EdgeInsets.fromLTRB(12*fem, 2*fem, 12*fem, 2*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Text(
                                'Пароль',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w300,
                                  height: 1.2189999898*ffem/fem,
                                  color: Color(0xff535353),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupbx1mdTy (7QcZLmnapRoFWDqineBX1M)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                              width: double.infinity,
                              height: 42*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff000000)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Повторите пароль',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.2189999898*ffem/fem,
                                    color: Color(0xff535353),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupaf7zx8s (7QcZSSHp7ddfrJ7uZeAf7Z)
                              margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 25*fem, 0*fem),
                              width: double.infinity,
                              height: 42*fem,
                              decoration: BoxDecoration (
                                color: Color(0x8e9f9ed0),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'ЗАРЕГИСТРИРОВАТЬСЯ',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2189999898*ffem/fem,
                                      letterSpacing: 0.75*fem,
                                      color: Color(0x77000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // logowotext1s9M (96:168)
                      left: 35*fem,
                      top: 16*fem,
                      child: Align(
                        child: SizedBox(
                          width: 207*fem,
                          height: 207*fem,
                          child: Image.asset(
                            'assets/page-1/images/logowotext-1-L4B.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // taF (96:173)
                      left: 257*fem,
                      top: 440*fem,
                      child: Align(
                        child: SizedBox(
                          width: 33*fem,
                          height: 34*fem,
                          child: Image.asset(
                            'assets/page-1/images/-X2B.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // Y91 (96:176)
                      left: 23*fem,
                      top: 27*fem,
                      child: Align(
                        child: SizedBox(
                          width: 38*fem,
                          height: 39*fem,
                          child: Image.asset(
                            'assets/page-1/images/-joZ.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // 12b (96:177)
                      left: 69*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 33*fem,
                          height: 34*fem,
                          child: Image.asset(
                            'assets/page-1/images/-qp7.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // v001betaEvw (96:272)
              left: 123*fem,
              top: 732*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 122*fem,
                    height: 38*fem,
                    child: Text(
                      'v.0.0.1_beta',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2189999898*ffem/fem,
                        color: Color(0xff535353),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // chevronleft2ro (96:180)
              left: 26*fem,
              top: 69*fem,
              child: Align(
                child: SizedBox(
                  width: 11*fem,
                  height: 23*fem,
                  child: Image.asset(
                    'assets/page-1/images/chevronleft-biK.png',
                    width: 11*fem,
                    height: 23*fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}