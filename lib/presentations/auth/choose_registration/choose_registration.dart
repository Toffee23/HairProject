import 'package:flutter/material.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/presentations/auth/new_password/new_password.dart';
import 'package:hairsol/presentations/auth/sign_up/sign_up.dart';
import 'package:hairsol/reusables/text_field.dart';
import 'package:hairsol/util/g_storage.dart';
import 'package:hairsol/widgets/app_bar/appbar_image.dart';
import 'package:hairsol/widgets/app_bar/appbar_image_1.dart';
import 'package:hairsol/widgets/app_bar/custom_app_bar.dart';
import 'package:hairsol/widgets/custom_elevated_button.dart';

import '../../dialogs/signin_dialog.dart';

class ChooseRegistrationScreen extends StatelessWidget {
  ChooseRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: CustomAppBar(
          leadingWidth: 47.h,
          leading: AppbarImage(
              svgPath: ImageConstant.imgArrowleft,
              margin: EdgeInsets.only(left: 23.h, top: 24.v, bottom: 24.v),
              onTap: () {
                onTapArrowleftone(context);
              }),
          actions: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(top: 4),
              child: AppbarImage1(
                imagePath: ImageConstant.imgLogo,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 1.v, bottom: 2.v),
                                child: Text('Create a new Account',
                                    style: theme.textTheme.headlineLarge)),
                          ]),
                          SizedBox(height: 8),
                          Text("Select User Type",
                              style: CustomTextStyles.titleMediumGray80005)
                        ])),
                SizedBox(height: 16),
                Divider(color: Colors.grey.shade700),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                        Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgThreeyoungpeople,
                              height: 82.v,
                              width: 55.h),
                          Text('As Client',
                              style: CustomTextStyles
                                  .titleMediumPrimarySemiBold),
                          SizedBox(height: 2.v),
                          CustomElevatedButton(
                              height: 30.v,
                              width: 125.h,
                              text: "Sign Up".tr,
                              buttonStyle: CustomButtonStyles.fillBlackTL15,
                              buttonTextStyle:
                              CustomTextStyles.titleMediumWhiteA700,
                              onTap: () {
                                onTapSignUp(context);
                              })
                        ]),
                        Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgYoungpeoplein,
                              height: 84.v,
                              width: 55.h),
                          Text("As professional",
                              style: CustomTextStyles
                                  .titleMediumBlack90003),
                          SizedBox(height: 2.v),
                          CustomElevatedButton(
                              height: 30.v,
                              width: 125.h,
                              text: "Sign Up".tr,
                              buttonStyle:
                              CustomButtonStyles.fillBlackTL15,
                              buttonTextStyle:
                              CustomTextStyles.titleMediumWhiteA700,
                              onTap: () {
                                onTapSignUp1(context);
                              })
                        ])
                      ]),
                      SizedBox(height: 16,),
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

                    ],
                  ),
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Already have an Account",
                      style: CustomTextStyles
                          .titleSmallUrbanistGray70002Medium),
                  SizedBox(width:8),
                  Text("Sign In",
                      style:
                          CustomTextStyles.titleSmallUrbanistBlueA20001)
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
  onTapArrowleftone(BuildContext context) {
Navigator.pop(context);  }

  onTapLogoone() {}
  onTapSignUp(BuildContext context){
    AppStorage.mybox.write(AppStorage.user_type, 'client');
    // String userType = AppStorage.mybox.read(AppStorage.user_type);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpScreen(),
      ),
    );
  }
  onTapSignUp1(BuildContext context){
    AppStorage.mybox.write(AppStorage.user_type, 'proffessional');
    // String userType = AppStorage.mybox.read(AppStorage.user_type);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpScreen(),
      ),
    );
  }
  onTapTxtForgotpassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewPasswordScreen(),
      ),
    );

  }
}
