import 'package:deebus/Constants/AppColors.dart';
import 'package:deebus/Constants/Strings.dart';
import 'package:deebus/StudentOnboarding/splashScreen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.color3,
        fontFamily: 'Ubuntu',
      ),
      home: SplashScreen(),
    );
  }
}
