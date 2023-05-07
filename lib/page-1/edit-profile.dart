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
        // editprofileCDq (96:181)
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
              // autogroupzmydLzF (7Qcig64x4i6kXLDbVqZMyD)
              left: 41*fem,
              top: 71*fem,
              child: Container(
                width: 306*fem,
                height: 554*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // group52yXR (96:271)
                      left: 36*fem,
                      top: 75*fem,
                      child: Container(
                        width: 207*fem,
                        height: 479*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(1000*fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // awhitejadeshapireBdV (96:183)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 15*fem),
                              width: 125*fem,
                              height: 125*fem,
                              child: Image.asset(
                                'assets/page-1/images/a-white-jade-shapire-EHZ.png',
                                width: 125*fem,
                                height: 125*fem,
                              ),
                            ),
                            Center(
                              // yZM (96:196)
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 6*fem),
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
                              // artyomivanovgmailcomkiX (96:197)
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 32*fem),
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
                            Center(
                              // emailxJo (96:198)
                              child: Container(
                                constraints: BoxConstraints (
                                  maxWidth: 207*fem,
                                ),
                                child: Text(
                                  'СМЕНИТЬ ФОТО ПРОФИЛЯ\n\nСМЕНИТЬ ИМЯ ПОЛЬЗОВАТЕЛЯ\n\nСМЕНИТЬ EMAIL\n\nСМЕНИТЬ ПАРОЛЬ\n\nУДАЛИТЬ АККАУНТ',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2189999819*ffem/fem,
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff000000),
                                    decorationColor: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // Gio (96:215)
                      left: 0*fem,
                      top: 283*fem,
                      child: Align(
                        child: SizedBox(
                          width: 33*fem,
                          height: 34*fem,
                          child: Image.asset(
                            'assets/page-1/images/-71M.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // u15 (96:216)
                      left: 225*fem,
                      top: 45*fem,
                      child: Align(
                        child: SizedBox(
                          width: 33*fem,
                          height: 34*fem,
                          child: Image.asset(
                            'assets/page-1/images/-FWj.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // 9AK (96:217)
                      left: 240*fem,
                      top: 409*fem,
                      child: Align(
                        child: SizedBox(
                          width: 33*fem,
                          height: 34*fem,
                          child: Image.asset(
                            'assets/page-1/images/-wwq.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // mhV (96:241)
                      left: 8*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 298*fem,
                          height: 91*fem,
                          child: Text(
                            'Личные данные',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // iconcalendar9i3 (96:200)
              left: 86*fem,
              top: 715*fem,
              child: Align(
                child: SizedBox(
                  width: 187.86*fem,
                  height: 27.26*fem,
                  child: Image.asset(
                    'assets/page-1/images/icon-calendar-sRd.png',
                    width: 187.86*fem,
                    height: 27.26*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ellipse2LXd (96:211)
              left: 177*fem,
              top: 749*fem,
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
              // chevronleftjpf (96:242)
              left: 26*fem,
              top: 69*fem,
              child: Align(
                child: SizedBox(
                  width: 11*fem,
                  height: 23*fem,
                  child: Image.asset(
                    'assets/page-1/images/chevronleft-idH.png',
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