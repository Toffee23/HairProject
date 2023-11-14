import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/presentations/auth/choose_registration/choose_registration.dart';
import 'package:hairsol/presentations/auth/sign_in/signin_password_screen.dart';
import 'package:hairsol/widgets/custom_elevated_button.dart';

class SignInSocialsScreen extends StatelessWidget {
  const SignInSocialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogoshade2,
                height: 212.v,
                width: 232.h,
              ),
              SizedBox(
                height: 16,
              ),
              Text('Lets get you Started with Hairisol',
                  style: CustomTextStyles.titleMediumGray70002),
              SizedBox(
                height: 16,
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Color(0XFFD9D9D9))),
                  child: Row(children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgGoogle1,
                        height: 40,
                        width: 40),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 31.h, top: 15.v, bottom: 11.v),
                        child: Text("Sign in using Google".tr,
                            style: CustomTextStyles.titleMediumGray70002_1))
                  ])),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Color(0XFFD9D9D9))),
                  child: Row(children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgFacebook1,
                        height: 40,
                        width: 40),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 31.h, top: 15.v, bottom: 11.v),
                        child: Text("Sign in using Facebook".tr,
                            style: CustomTextStyles.titleMediumGray70002_1))
                  ])),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Color(0XFFD9D9D9))),
                  child: Row(children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgApplelogo1,
                        height: 40,
                        width: 40),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 31,
                        ),
                        child: Text("Sign in using Apple".tr,
                            style: CustomTextStyles.titleMediumGray70002_1))
                  ])),
              CustomElevatedButton(
                  text: 'Sign in using Email',
                  margin: EdgeInsets.only(top: 32),
                  buttonStyle: CustomButtonStyles.fillBlackTL12,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninPasswordScreen(),
                      ),
                    );
                  }),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New to Hairisol?",
                      style: CustomTextStyles.titleMediumGray70002),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      onTapNewtohairisol(context);
                    },
                    child: Text("Register Now".tr,
                        style: CustomTextStyles.titleMediumBlueA20001
                            .copyWith(decoration: TextDecoration.underline)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapSigninusing() {}

  onTapNewtohairisol(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChooseRegistrationScreen(),
      ),
    );

  }
}
