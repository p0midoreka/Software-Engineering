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
        // welcome2kDh (89:98)
        padding: EdgeInsets.fromLTRB(0*fem, 71*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xff60d7fd), Color(0xfffff6db)],
            stops: <double>[0, 0.792],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // UJ7 (89:100)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 11*fem),
              constraints: BoxConstraints (
                maxWidth: 298*fem,
              ),
              child: Text(
                'Следи за своим эмоциональным здоровьем - \nэто легко с нашим приложением!',
                style: SafeGoogleFont (
                  'Montserrat',
                  fontSize: 18*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2189999686*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroupkjozzfm (7Qcac51nYFBydXgqBTkjoZ)
              width: double.infinity,
              height: 333*fem,
              child: Stack(
                children: [
                  Positioned(
                    // GtB (89:107)
                    left: 0*fem,
                    top: 31*fem,
                    child: Align(
                      child: SizedBox(
                        width: 377*fem,
                        height: 302*fem,
                        child: Image.asset(
                          'assets/page-1/images/-cQs.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vSw (89:108)
                    left: 84*fem,
                    top: 27*fem,
                    child: Align(
                      child: SizedBox(
                        width: 38*fem,
                        height: 39*fem,
                        child: Image.asset(
                          'assets/page-1/images/-hKR.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // Mo9 (89:109)
                    left: 130*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 34*fem,
                        child: Image.asset(
                          'assets/page-1/images/-2xj.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupj4mhzr7 (7QcbhNXeCzknZJ6nnzJ4mH)
              padding: EdgeInsets.fromLTRB(26*fem, 0*fem, 36*fem, 30*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupqpnkTUo (7QcarPwFMB1PgYGwy3qPNK)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                    width: double.infinity,
                    height: 127*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // JVR (89:101)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 298*fem,
                              height: 91*fem,
                              child: Text(
                                'Изучай статистику и выявляй причины своего самочувствия',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2189999898*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // sliderRiT (89:103)
                          left: 127*fem,
                          top: 60*fem,
                          child: Container(
                            width: 55*fem,
                            height: 10*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ellipse1UAw (89:104)
                                  width: 10*fem,
                                  height: 10*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(5*fem),
                                    color: Color(0x7f9f9ed0),
                                  ),
                                ),
                                SizedBox(
                                  width: 5*fem,
                                ),
                                Container(
                                  // ellipse2KhM (89:105)
                                  width: 10*fem,
                                  height: 10*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(5*fem),
                                    color: Color(0x7f9f9ed0),
                                  ),
                                ),
                                SizedBox(
                                  width: 5*fem,
                                ),
                                Container(
                                  // rectangle13adH (89:106)
                                  width: 25*fem,
                                  height: 10*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    color: Color(0xff9f9ed0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // rKu (89:110)
                          left: 209*fem,
                          top: 42*fem,
                          child: Align(
                            child: SizedBox(
                              width: 33*fem,
                              height: 34*fem,
                              child: Image.asset(
                                'assets/page-1/images/-G75.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // V7y (89:111)
                          left: 240*fem,
                          top: 70*fem,
                          child: Align(
                            child: SizedBox(
                              width: 33*fem,
                              height: 34*fem,
                              child: Image.asset(
                                'assets/page-1/images/-HZM.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // MAB (89:112)
                          left: 108*fem,
                          top: 99*fem,
                          child: Align(
                            child: SizedBox(
                              width: 100*fem,
                              height: 28*fem,
                              child: Text(
                                'ВХОД:',
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup6kmhN5H (7QcbEoTagcW2HbZDJR6kMH)
                    margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 11*fem),
                    padding: EdgeInsets.fromLTRB(12*fem, 2*fem, 12*fem, 2*fem),
                    width: 276*fem,
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
                    // autogroupydkfhWs (7QcbSo7bYh6Kj3gCEmYDkf)
                    margin: EdgeInsets.fromLTRB(79*fem, 0*fem, 60*fem, 1*fem),
                    width: double.infinity,
                    height: 42*fem,
                    decoration: BoxDecoration (
                      color: Color(0x8e9f9ed0),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'ВОЙТИ',
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
                  Center(
                    // nwd (89:116)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'РЕГИСТРАЦИЯ',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.2189999898*ffem/fem,
                          decoration: TextDecoration.underline,
                          color: Color(0xff535353),
                          decorationColor: Color(0xff535353),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}