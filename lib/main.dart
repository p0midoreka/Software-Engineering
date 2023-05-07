import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
// import 'package:myapp/page-1/loading-screen.dart';
// import 'package:myapp/page-1/main.dart';
import 'package:myapp/page-1/welcome.dart';
// import 'package:myapp/page-1/register.dart';
// import 'package:myapp/page-1/welcome-2.dart';
// import 'package:myapp/page-1/add.dart';
// import 'package:myapp/page-1/stat.dart';
// import 'package:myapp/page-1/lk.dart';
// import 'package:myapp/page-1/edit-profile.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene(),
		),
		),
	);
	}
}
