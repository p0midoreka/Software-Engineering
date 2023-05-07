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
        // statAeP (7:553)
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
              // autogroupch31Vq5 (7QcfFBnNQtxbfStUxVcH31)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 18*fem),
              width: 298*fem,
              height: 91*fem,
              child: Stack(
                children: [
                  Positioned(
                    // cvQb (7:613)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 298*fem,
                        height: 91*fem,
                        child: Text(
                          'Cтатистика',
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
                    // rectangle2rSf (7:616)
                    left: 16*fem,
                    top: 45*fem,
                    child: Align(
                      child: SizedBox(
                        width: 276*fem,
                        height: 42*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(20*fem),
                            border: Border.all(color: Color(0xff000000)),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rb5 (7:617)
                    left: 106*fem,
                    top: 45*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 96*fem,
                          height: 42*fem,
                          child: Text(
                            'МАРТ 2023',
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
                  ),
                  Positioned(
                    // chevrondownDK9 (7:618)
                    left: 261*fem,
                    top: 64*fem,
                    child: Align(
                      child: SizedBox(
                        width: 14*fem,
                        height: 7*fem,
                        child: Image.asset(
                          'assets/page-1/images/chevrondown.png',
                          width: 14*fem,
                          height: 7*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              // 2XV (7:620)
              child: Container(
                margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 10*fem),
                child: Text(
                  'ГРАФИК:',
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
            Container(
              // autogroupmg9qENf (7QcfbRheNQTUqmbGHiMG9q)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 11*fem, 7*fem),
              padding: EdgeInsets.fromLTRB(26*fem, 19*fem, 12*fem, 27.95*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xff000000)),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // happy1yjZ (7:697)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 165*fem, 6*fem),
                    width: 21*fem,
                    height: 20*fem,
                    child: Image.asset(
                      'assets/page-1/images/happy-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // vectorDP1 (7:609)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                    width: 238*fem,
                    height: 68*fem,
                    child: Image.asset(
                      'assets/page-1/images/vector.png',
                      width: 238*fem,
                      height: 68*fem,
                    ),
                  ),
                  Container(
                    // sad148j (7:698)
                    margin: EdgeInsets.fromLTRB(213*fem, 0*fem, 0*fem, 0*fem),
                    width: 21*fem,
                    height: 20.05*fem,
                    child: Image.asset(
                      'assets/page-1/images/sad-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouppts7gfu (7QcfsqPyGoexj6p39uPtS7)
              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 0*fem),
              width: 298*fem,
              height: 377*fem,
              child: Stack(
                children: [
                  Positioned(
                    // vaF (7:611)
                    left: 50*fem,
                    top: 16*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 198*fem,
                          height: 24*fem,
                          child: Text(
                            'АНАЛИЗ МЕСЯЦА:',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.218999958*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // tfV (7:612)
                    left: 1*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 274*fem,
                        height: 328*fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2190000094*ffem/fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'ВАШЕ ЭМОЦИОНАЛЬНОЕ СОСТОЯНИЕ НАХОДИЛОСЬ В ДИАПАЗОНЕ:',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                              ),
                              TextSpan(
                                text: '54%-82%\n',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff424255),
                                ),
                              ),
                              TextSpan(
                                text: 'СРЕДНЕЕ ЗНАЧЕНИЕ:',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '61%\n',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff424255),
                                ),
                              ),
                              TextSpan(
                                text: 'НАИБОЛЬШЕЕ ЗНАЧЕНИЕ:',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '82% (12 МАРТА 2023)\n',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff424255),
                                ),
                              ),
                              TextSpan(
                                text: 'НАИМЕНЬШЕЕ ЗНАЧЕНИЕ:',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '54% (24 МАРТА 2023)\n',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0xff424255),
                                ),
                              ),
                              TextSpan(
                                text: '(ПОДРОБНЫЙ АНАЛИЗ ВЛИЯНИЯ ДЕЯТЕЛЬНОСТИ НА ЭМОЦИОНАЛЬНОЕ СОСТОЯНИЕ...)\n',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2190000094*ffem/fem,
                                  color: Color(0x59000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle6yEK (7:621)
                    left: 0*fem,
                    top: 315*fem,
                    child: Align(
                      child: SizedBox(
                        width: 298*fem,
                        height: 62*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(35*fem),
                            color: Color(0xff424255),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconcalendarZyD (7:622)
                    left: 55*fem,
                    top: 330*fem,
                    child: Align(
                      child: SizedBox(
                        width: 187.86*fem,
                        height: 27.26*fem,
                        child: Image.asset(
                          'assets/page-1/images/icon-calendar-TsR.png',
                          width: 187.86*fem,
                          height: 27.26*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse2jmD (7:633)
                    left: 227*fem,
                    top: 364*fem,
                    child: Align(
                      child: SizedBox(
                        width: 6*fem,
                        height: 6*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(3*fem),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // sliderxdy (9:720)
                    left: 122*fem,
                    top: 274*fem,
                    child: Container(
                      width: 55*fem,
                      height: 10*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse1oPh (9:721)
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
                            // ellipse2FFh (9:722)
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
                            // rectangle13Jzf (9:723)
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}