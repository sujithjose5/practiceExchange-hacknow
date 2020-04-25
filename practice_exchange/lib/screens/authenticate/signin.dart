/*
*  signup.dart
*  Hacknow sketch
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:practiceexchange/values/values.dart';
import 'package:practiceexchange/values/borders.dart';
import 'package:practiceexchange/values/radii.dart';
import 'package:practiceexchange/values/colors.dart';


class SignIn extends StatelessWidget {

  final Function toggleView;
  SignIn({ this.toggleView });
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 243,
                height: 33,
                margin: EdgeInsets.only(left: 91, top: 178),
                child: Image.asset(
                  "assets/images/new-americares-logo-as-of-912.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 19, right: 50),
                child: Text(
                  "Practice Exchange",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 94),
                child: Text(
                  "Sign-in to your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 67),
                child: Text(
                  "Your full name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 370,
                height: 1,
                margin: EdgeInsets.only(left: 20, top: 19),
                decoration: BoxDecoration(
                  color: AppColors.primaryElement,
                ),
                child: Container(),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 48),
                child: Text(
                  "Your email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 370,
                height: 1,
                margin: EdgeInsets.only(left: 20, top: 19),
                decoration: BoxDecoration(
                  color: AppColors.primaryElement,
                ),
                child: Container(),
              ),
            ),
            Container(
              height: 44,
              margin: EdgeInsets.only(left: 20, top: 47, right: 20),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryElement,
                        borderRadius: Radii.k22pxRadius,
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    top: 13,
                    child: Text(
                      "Sign in",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.accentText,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
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