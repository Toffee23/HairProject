import 'package:flutter/material.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/presentations/auth/onboardingscreen/slideone_screen/slideone_screen.dart';
import 'package:hairsol/presentations/auth/onboardingscreen/slidethree_screen/slidethree_screen.dart';
import 'package:hairsol/presentations/auth/onboardingscreen/slidetwo_screen/slidetwo_screen.dart';
import 'package:hairsol/presentations/auth/signin_socials/sign_in_socials_screen.dart';

import '../../../widgets/custom_elevated_button.dart';

class Onboarding extends StatefulWidget {
  // const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomElevatedButton(
                margin: EdgeInsets.only(bottom: 100),
                width: 65,
                text: "Skip",
                buttonStyle: CustomButtonStyles.fillBlack,
                alignment: Alignment.centerRight,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const SignInSocialsScreen()));                },
              ),
              Flexible(
                child: PageView(
                  controller: _pageController,
                  children: [
                    SlideoneScreen(),
                    SlidetwoScreen(),
                    SlidethreeScreen()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
