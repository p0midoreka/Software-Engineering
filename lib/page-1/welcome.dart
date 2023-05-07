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
        padding: EdgeInsets.fromLTRB(0*fem, 55*fem, 0*fem, 0*fem),
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
              width: double.infinity,
              height: 450*fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 153*fem,
                    top: 393*fem,
                    child: Container(
                      width: 55*fem,
                      height: 10*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
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
                    left: 0*fem,
                    top: 31*fem,
                    child: Container(
                      width: 377*fem,
                      height: 393*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 377*fem,
                            height: 302*fem,
                            child: Image.asset(
                              'assets/page-1/images/-Rqm.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(35*fem, 0*fem, 44*fem, 0*fem),
                            width: double.infinity,
                            height: 91*fem,
                            child: Stack(
                              children: [
                                Positioned(
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
                                  left: 209*fem,
                                  top: 42*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 33*fem,
                                      height: 34*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/-S83.png',
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
                  ),
                  Positioned(
                    left: 84*fem,
                    top: 27*fem,
                    child: Align(
                      child: SizedBox(
                        width: 38*fem,
                        height: 39*fem,
                        child: Image.asset(
                          'assets/page-1/images/-M3y.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 130*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 34*fem,
                        child: Image.asset(
                          'assets/page-1/images/.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 266*fem,
                    top: 403*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 34*fem,
                        child: Image.asset(
                          'assets/page-1/images/-kEX.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 134*fem,
                    top: 422*fem,
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
              padding: EdgeInsets.fromLTRB(46*fem, 3*fem, 38*fem, 30*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50*fem)
                      )
                    ),
                  ),
                  SizedBox(
                      width:  276*fem,
                      height:  14*fem,
                  ),
                  
            
                  Container(
                    margin: EdgeInsets.fromLTRB(59*fem, 0*fem, 58*fem, 1*fem),
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
                    child: Text(
                      'РЕГИСТРАЦИЯ',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w300,
                        height: 2.2*ffem/fem,
                        decoration: TextDecoration.underline,
                        color: Color(0xff535353),
                        decorationColor: Color(0xff535353),
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