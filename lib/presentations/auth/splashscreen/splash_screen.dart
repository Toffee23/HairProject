import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hairsol/presentations/auth/onboardingscreen/onboarding.dart';

import '../../../core/utils/image_constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Onboarding()));
    });
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: SizedBox(
          height: 350,
          width: 350,
          child: Image.asset(
            ImageConstant.img5,
          ),
        )),
      ),
    );
  }
}
