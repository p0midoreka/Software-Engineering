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
        // add851 (7:386)
        width: double.infinity,
        height: 800*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xfff1d473), Color(0xfff9c3b7), Color(0xfffff6db)],
            stops: <double>[0, 0.224, 1],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupbxijF39 (7QcdDL15saRf7GKKfaBXij)
              left: 49*fem,
              top: 71*fem,
              child: Container(
                width: 298*fem,
                height: 91*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // 63m (7:507)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 298*fem,
                          height: 91*fem,
                          child: Text(
                            'Новая запись',
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
                      // rSF (7:508)
                      left: 49*fem,
                      top: 55*fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 162*fem,
                            height: 24*fem,
                            child: Text(
                              '5 АПРЕЛЯ 2023',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // MnK (7:509)
              left: 62*fem,
              top: 162*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 236*fem,
                    height: 20*fem,
                    child: Text(
                      'КАК ВЫ СЕБЯ ЧУВСТВУЕТЕ?',
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
              // autogroupqushQ8K (7QcdteCupAosA8VKQPqush)
              left: 69*fem,
              top: 256*fem,
              child: Align(
                child: SizedBox(
                  width: 223*fem,
                  height: 20*fem,
                  child: Image.asset(
                    'assets/page-1/images/auto-group-qush.png',
                    width: 223*fem,
                    height: 20*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupor3raBD (7QcdQA2NmEQQEwCjgJoR3R)
              left: 51*fem,
              top: 217*fem,
              child: Container(
                width: 258*fem,
                height: 33.87*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup7fcfCTV (7QcdepGchzgYfbaAA57fCf)
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 0*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // sad14Vh (7:525)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 0.04*fem),
                            width: 35*fem,
                            height: 33.83*fem,
                            child: Image.asset(
                              'assets/page-1/images/sad-1-hcX.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            // HdM (7:527)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0.13*fem, 0*fem, 0*fem),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.218999958*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '17',
                                    ),
                                    TextSpan(
                                      text: '%/',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.218999958*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '100',
                                    ),
                                    TextSpan(
                                      text: '%',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.218999958*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // happy1Hoh (7:526)
                      width: 35*fem,
                      height: 33.87*fem,
                      child: Image.asset(
                        'assets/page-1/images/happy-1-3SB.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // MoZ (7:528)
              left: 0*fem,
              top: 326*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 359*fem,
                    height: 15*fem,
                    child: Text(
                      'ЧЕМ ВЫ СЕГОДНЯ ЗАНИМАЛИСЬ?',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2190000216*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupcvl7hkw (7QceFdbwKoqtgAhY3WcVL7)
              left: 31*fem,
              top: 700*fem,
              child: Container(
                width: 298*fem,
                height: 62*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffcad5e),
                  borderRadius: BorderRadius.circular(35*fem),
                ),
                child: Center(
                  child: Center(
                    child: Text(
                      'ДОБАВИТЬ ЗАПИСЬ',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2189999898*ffem/fem,
                        letterSpacing: 0.75*fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group51QHy (7:545)
              left: 42*fem,
              top: 358*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(90*fem, 0*fem, 18*fem, 0*fem),
                width: 276*fem,
                height: 42*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff000000)),
                  color: Color(0xfff885ab),
                  borderRadius: BorderRadius.circular(20*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      // jjZ (7:547)
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 0*fem),
                        child: Text(
                          'УЧЁБА',
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
                    Container(
                      // chevrondownkef (7:548)
                      margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                      width: 14*fem,
                      height: 7*fem,
                      child: Image.asset(
                        'assets/page-1/images/chevrondown-75V.png',
                        width: 14*fem,
                        height: 7*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // nrF (7:550)
              left: 0*fem,
              top: 435*fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 359*fem,
                    height: 15*fem,
                    child: Text(
                      'КОММЕНТАРИЙ',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2190000216*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroup7qjfNJf (7Qce4yF3156WjKhmss7QJf)
              left: 42*fem,
              top: 465*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 22*fem, 0*fem),
                width: 276*fem,
                height: 157*fem,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0xff000000)),
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20*fem),
                ),
                child: Text(
                  'Плохо написал итоговый тест|',
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
            Positioned(
              // chevronleftfwy (7:549)
              left: 26*fem,
              top: 69*fem,
              child: Align(
                child: SizedBox(
                  width: 11*fem,
                  height: 23*fem,
                  child: Image.asset(
                    'assets/page-1/images/chevronleft.png',
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