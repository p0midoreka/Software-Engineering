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
        // mainwrK (3:5)
        padding: EdgeInsets.fromLTRB(24*fem, 71*fem, 31*fem, 38*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xfff1d473), Color(0xfff9c3b7), Color(0xfffff6db)],
            stops: <double>[0, 0.224, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupxcixGn7 (7QcMqBoHNUps1EREYZxciX)
              margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 5*fem, 1*fem),
              width: double.infinity,
              height: 91*fem,
              child: Stack(
                children: [
                  Positioned(
                    // wdM (7:269)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 298*fem,
                        height: 91*fem,
                        child: Text(
                          'Календарь',
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
                    // G3M (7:331)
                    left: 108*fem,
                    top: 55*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 91*fem,
                          height: 24*fem,
                          child: Text(
                            'АПРЕЛЬ',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.218999958*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // Sc3 (7:333)
                    left: 240*fem,
                    top: 45*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 34*fem,
                        child: Image.asset(
                          'assets/page-1/images/-bmD.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // month04april7TH (7:270)
              margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 10*fem, 9*fem),
              width: double.infinity,
              height: 182*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogroupr8rhxD1 (7QcQF7n87QPhnpVMUgR8RH)
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // textqXh (7:283)
                          child: Text(
                            '13',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w200,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textff9 (7:291)
                          child: Text(
                            '14',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w200,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textx8T (7:299)
                          child: Text(
                            '15',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w200,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // text2PD (7:307)
                          child: Text(
                            '16',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w200,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textuhu (7:315)
                          child: Text(
                            '17',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w200,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textc6X (7:323)
                          child: Text(
                            '18',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w200,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // autogroupmzrofqV (7QcQnBigxZsL6p5Ypdmzro)
                    width: 26*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // textMTR (7:276)
                          child: Text(
                            'ПН',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textqdV (7:284)
                          child: Text(
                            '27',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupdmkykEf (7QcRBRYy8bWndzp5PSdMKy)
                          width: double.infinity,
                          height: 26*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse4eL3 (7:274)
                                left: 1*fem,
                                top: 1*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 24*fem,
                                    height: 24*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(12*fem),
                                        color: Color(0xfffcad5e),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // textg1q (7:292)
                                left: 0*fem,
                                top: 0*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 26*fem,
                                      height: 26*fem,
                                      child: Text(
                                        '3',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 11*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2102272727*ffem/fem,
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
                        Center(
                          // textijD (7:300)
                          child: Text(
                            '10',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textokf (7:308)
                          child: Text(
                            '17',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // texth5M (7:316)
                          child: Text(
                            '24',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textaQ3 (7:324)
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // autogroupsp1mEjV (7QcRTVvWuAFY9gFYZTSP1m)
                    width: 26*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // textWh1 (7:277)
                          child: Text(
                            'ВТ',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // text1dm (7:285)
                          child: Text(
                            '28',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupkkmrUXM (7QcRpeyvyiWvrYMR3fKkmR)
                          width: double.infinity,
                          height: 26*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse3n2F (7:272)
                                left: 1*fem,
                                top: 1*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 24*fem,
                                    height: 24*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(12*fem),
                                        color: Color(0xffbfcbe6),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // text2BV (7:293)
                                left: 0*fem,
                                top: 0*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 26*fem,
                                      height: 26*fem,
                                      child: Text(
                                        '4',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 11*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2102272727*ffem/fem,
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
                        Center(
                          // textorT (7:301)
                          child: Text(
                            '11',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // text3F1 (7:309)
                          child: Text(
                            '18',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textV71 (7:317)
                          child: Text(
                            '25',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textYb5 (7:325)
                          child: Text(
                            '2',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // autogroupzpppomu (7QcS5pDLdEVAqgPo4gzPpP)
                    width: 26*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // textGvP (7:278)
                          child: Text(
                            'СР',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // text9zB (7:286)
                          child: Text(
                            '29',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupwpc7eg3 (7QcSRdyeASue3wNSnBwPC7)
                          width: double.infinity,
                          height: 26*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse2Z2K (7:271)
                                left: 1*fem,
                                top: 1*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 24*fem,
                                    height: 24*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(12*fem),
                                        border: Border.all(color: Color(0xffffffff)),
                                        color: Color(0xfff885ab),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // textnQs (7:294)
                                left: 0*fem,
                                top: 0*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 26*fem,
                                      height: 26*fem,
                                      child: Text(
                                        '5',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w800,
                                          height: 1.2102272511*ffem/fem,
                                          color: Color(0xfffff6db),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          // text1Hd (7:302)
                          child: Text(
                            '12',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textgef (7:310)
                          child: Text(
                            '19',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textnBu (7:318)
                          child: Text(
                            '26',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // text5go (7:326)
                          child: Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // autogroupnsapM8X (7QcSfdaKqYGKjJBFsbnSAP)
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // text2kT (7:279)
                          child: Text(
                            'ЧТ',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textXSK (7:287)
                          child: Text(
                            '30',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                        Center(
                          // textE5q (7:295)
                          child: Text(
                            '6',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textiWo (7:303)
                          child: Text(
                            '13',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textoHM (7:311)
                          child: Text(
                            '20',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // texth7q (7:319)
                          child: Text(
                            '27',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textzMq (7:327)
                          child: Text(
                            '4',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // autogroup5puwruq (7QcT4naQj7J6g4xxWs5PUw)
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // textKHd (7:280)
                          child: Text(
                            'ПТ',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textoTh (7:288)
                          child: Text(
                            '31',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                        Center(
                          // texttzw (7:296)
                          child: Text(
                            '7',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textnqR (7:304)
                          child: Text(
                            '14',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textVUw (7:312)
                          child: Text(
                            '21',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textmST (7:320)
                          child: Text(
                            '28',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // text4Af (7:328)
                          child: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // autogrouprhp9KsH (7QcTYBxR65hgstxoEsrhP9)
                    width: 26*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // textcrP (7:281)
                          child: Text(
                            'СБ',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupnwrpKF1 (7QcTqGJJG9pdWXkBVRNWrP)
                          width: double.infinity,
                          height: 26*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse6Roq (7:275)
                                left: 1*fem,
                                top: 1*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 24*fem,
                                    height: 24*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(12*fem),
                                        color: Color(0xfffcad5e),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // textH5M (7:289)
                                left: 0*fem,
                                top: 0*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 26*fem,
                                      height: 26*fem,
                                      child: Text(
                                        '1',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 11*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2102272727*ffem/fem,
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
                        Center(
                          // texttaw (7:297)
                          child: Text(
                            '8',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textB4F (7:305)
                          child: Text(
                            '15',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textgFu (7:313)
                          child: Text(
                            '22',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textacB (7:321)
                          child: Text(
                            '29',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // text5Yw (7:329)
                          child: Text(
                            '6',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // autogroupbz3yXvj (7QcU6WMuC8QZ65jPRzbZ3y)
                    width: 26*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // textcSP (7:282)
                          child: Text(
                            'ВС',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupmq1vWnf (7QcUJFXLCq9okJ1tbiMq1V)
                          width: double.infinity,
                          height: 26*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse5Dwy (7:273)
                                left: 1*fem,
                                top: 1*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 24*fem,
                                    height: 24*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(12*fem),
                                        color: Color(0xffbfcbe6),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // textU7D (7:290)
                                left: 0*fem,
                                top: 0*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 26*fem,
                                      height: 26*fem,
                                      child: Text(
                                        '2',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 11*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2102272727*ffem/fem,
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
                        Center(
                          // textWJo (7:298)
                          child: Text(
                            '9',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // text1FZ (7:306)
                          child: Text(
                            '16',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // text7pP (7:314)
                          child: Text(
                            '23',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textQYb (7:322)
                          child: Text(
                            '30',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Center(
                          // textJts (7:330)
                          child: Text(
                            '7',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 11*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272727*ffem/fem,
                              color: Color(0xff7e7e7e),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupy3oq1oH (7QcN6vr41D6t9G5Q2QY3oq)
              margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 7*fem, 33*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // J1h (7:332)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 89*fem, 0*fem),
                    width: 33*fem,
                    height: 34*fem,
                    child: Image.asset(
                      'assets/page-1/images/-7hu.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // autogroupxvmqBLP (7QcNK1LG9kJsB89CtJXvMq)
                    margin: EdgeInsets.fromLTRB(0*fem, 13*fem, 0*fem, 0*fem),
                    width: 159*fem,
                    height: 42*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfffcad5e),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'ЗАПИСЬ',
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
                ],
              ),
            ),
            Container(
              // autogroupczmh6Ls (7QcNXLK49fMtzE3VWqCzMh)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 127*fem),
              width: 300*fem,
              height: 131*fem,
              child: Stack(
                children: [
                  Positioned(
                    // mC7 (7:349)
                    left: 2*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 298*fem,
                        height: 91*fem,
                        child: Text(
                          '5 АПРЕЛЯ',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2189999898*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // C2X (7:361)
                    left: 0*fem,
                    top: 26*fem,
                    child: Align(
                      child: SizedBox(
                        width: 274*fem,
                        height: 105*fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'TT Interphases Pro  Var',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.171875*ffem/fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'ОЦЕНКА ЭМОЦИОНАЛЬНОГО СОСТОЯНИЯ:',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.171875*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.171875*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '17/100\n',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.171875*ffem/fem,
                                  color: Color(0xff614257),
                                ),
                              ),
                              TextSpan(
                                text: 'ДЕЯТЕЛЬНОСТЬ:',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.171875*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.171875*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: 'УЧЁБА\n',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.171875*ffem/fem,
                                  color: Color(0xff614257),
                                ),
                              ),
                              TextSpan(
                                text: 'КОММЕНТАРИЙ: ',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.171875*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '“ПЛОХО НАПИСАЛ ИТОГОВЫЙ ТЕСТ”',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.171875*ffem/fem,
                                  color: Color(0xff614257),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // RvB (7:373)
                    left: 257*fem,
                    top: 38*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 34*fem,
                        child: Image.asset(
                          'assets/page-1/images/-MZu.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupzreo6WX (7QcNjpxEiVeHz9qRzSzreo)
              margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 0*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(55*fem, 15*fem, 55.14*fem, 7*fem),
              width: 298*fem,
              decoration: BoxDecoration (
                color: Color(0xfffcad5e),
                borderRadius: BorderRadius.circular(35*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // iconcalendarJ6o (7:374)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.74*fem),
                    width: 187.86*fem,
                    height: 27.26*fem,
                    child: Image.asset(
                      'assets/page-1/images/icon-calendar-NLB.png',
                      width: 187.86*fem,
                      height: 27.26*fem,
                    ),
                  ),
                  Container(
                    // ellipse2ucP (7:385)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 161.86*fem, 0*fem),
                    width: 6*fem,
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