import 'package:deebus/Constants/AssetsStrings.dart';
import 'package:deebus/Utils/Styles.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(deebusLogoBlue, height: 100, width: 100,),
                ],
              ),
              Text("Get Started", style: textStyleBigBold,),
              Text("Sign up with DeeBus", style: textStyleBigLight,),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Username"
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
