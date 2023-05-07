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
        // lkUif (7:636)
        padding: EdgeInsets.fromLTRB(26*fem, 71*fem, 31*fem, 38*fem),
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
              // autogroup8mkwy39 (7Qch4PG5pTyn2sn3vi8Mkw)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 15*fem),
              width: 298*fem,
              height: 177*fem,
              child: Stack(
                children: [
                  Positioned(
                    // awhitejadeshapire1Vd (7:637)
                    left: 91*fem,
                    top: 52*fem,
                    child: Align(
                      child: SizedBox(
                        width: 125*fem,
                        height: 125*fem,
                        child: Image.asset(
                          'assets/page-1/images/a-white-jade-shapire.png',
                          width: 125*fem,
                          height: 125*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // Cq1 (7:691)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 298*fem,
                        height: 91*fem,
                        child: Text(
                          'Аккаунт',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2189999686*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // n2X (7:695)
                    left: 240*fem,
                    top: 45*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 34*fem,
                        child: Image.asset(
                          'assets/page-1/images/-Lao.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              // 1fy (7:650)
              child: Container(
                margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 6*fem),
                child: Text(
                  'Алексей Иванов',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 20*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.218999958*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Center(
              // artyomivanovgmailcomzXu (7:651)
              child: Container(
                margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 32*fem),
                child: Text(
                  'artyom.ivanov@gmail.com',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 14*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2189999989*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // autogroupd1qvcJP (7QchHssbnoeN9kuuUrd1qV)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 15*fem, 60*fem),
              width: double.infinity,
              height: 251*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // T47 (7:694)
                    margin: EdgeInsets.fromLTRB(0*fem, 12*fem, 2*fem, 0*fem),
                    width: 33*fem,
                    height: 34*fem,
                    child: Image.asset(
                      'assets/page-1/images/-GFu.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // autogrouparbdsdd (7QchYsScsQPEx54deoArbD)
                    width: 238*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // Asd (7:652)
                          left: 0*fem,
                          top: 0*fem,
                          child: Center(
                            child: Align(
                              child: SizedBox(
                                width: 207*fem,
                                height: 70*fem,
                                child: Text(
                                  'ЛИЧНЫЕ ДАННЫЕ\nИНТЕГРАЦИИ\nИСТОРИЯ',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2189999819*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // logowotext1K8F (7:692)
                          left: 0*fem,
                          top: 44*fem,
                          child: Align(
                            child: SizedBox(
                              width: 207*fem,
                              height: 207*fem,
                              child: Image.asset(
                                'assets/page-1/images/logowotext-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // MKq (7:693)
                          left: 0*fem,
                          top: 199*fem,
                          child: Center(
                            child: Align(
                              child: SizedBox(
                                width: 207*fem,
                                height: 45*fem,
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'TT Interphases Pro  Var',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.171875*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'ОБРАТНАЯ СВЯЗЬ\n',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.171875*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'ВЫХОД',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.171875*ffem/fem,
                                          decoration: TextDecoration.underline,
                                          color: Color(0xff000000),
                                          decorationColor: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rSw (7:696)
                          left: 205*fem,
                          top: 138*fem,
                          child: Align(
                            child: SizedBox(
                              width: 33*fem,
                              height: 34*fem,
                              child: Image.asset(
                                'assets/page-1/images/-QgB.png',
                                fit: BoxFit.cover,
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
            Center(
              // v001betagwm (96:283)
              child: Container(
                margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 9*fem),
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
            Container(
              // autogroup9sfrHwZ (7QchrcS4K9ReL1QdHh9sFR)
              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(55*fem, 15*fem, 55.14*fem, 7*fem),
              width: 298*fem,
              decoration: BoxDecoration (
                color: Color(0xff424255),
                borderRadius: BorderRadius.circular(35*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // iconcalendarsum (7:670)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.74*fem),
                    width: 187.86*fem,
                    height: 27.26*fem,
                    child: Image.asset(
                      'assets/page-1/images/icon-calendar.png',
                      width: 187.86*fem,
                      height: 27.26*fem,
                    ),
                  ),
                  Container(
                    // ellipse25W3 (7:681)
                    margin: EdgeInsets.fromLTRB(91*fem, 0*fem, 90.86*fem, 0*fem),
                    width: double.infinity,
                    height: 6*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(3*fem),
                      color: Color(0xffffffff),
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