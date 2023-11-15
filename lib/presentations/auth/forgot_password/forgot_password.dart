import 'package:flutter/material.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/data/apiClient/api_client.dart';
import 'package:hairsol/presentations/auth/new_password/new_password.dart';
import 'package:hairsol/reusables/text_field.dart';
import 'package:hairsol/widgets/app_bar/appbar_image.dart';
import 'package:hairsol/widgets/app_bar/appbar_image_1.dart';
import 'package:hairsol/widgets/app_bar/custom_app_bar.dart';
import 'package:hairsol/widgets/custom_elevated_button.dart';

import '../../dialogs/signin_dialog.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = new TextEditingController();

  void forgetPassword() async {
    final String email = passwordController.text.trim();

    if (email.isEmpty) {
      print('Email field is empty');
    } else if (!email.isEmail) {
      print('invalid email');
    } else {
      final response = await ApiClient().forgetPassword(email);

      switch (response) {
        case (true):
        // Go to token verification page
          print('Successful');
          break;
        default:
        // user not found
          print(response);
      }
    }
  }

  confirmTransfer(BuildContext context) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            insetPadding: const EdgeInsets.all(10),
            content: SignInDialog(),
          );
        });
    return false;
  }

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
          child: Form(
            key: _formKey,
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
                                  child: Text('Forgot Password',
                                      style: theme.textTheme.headlineLarge)),
                            ]),
                            SizedBox(height: 8),
                            Text("Type your last known password",
                                style: CustomTextStyles.titleMediumGray80005)
                          ])),
                  SizedBox(height: 16),
                  Divider(color: Colors.grey.shade700),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text("Confirm Password",
                            style: CustomTextStyles.headlineSmallPrimary),
                        CustomTextField(
                          controller: passwordController,
                          validator: (text) {},
                          onChanged: (String value) {},
                          hintText: 'Enter your password',
                          prefixIcon: Icons.lock,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 2.v),
                                      child: Text("Get a new password",
                                          style: CustomTextStyles
                                              .titleSmallUrbanistRedA700)))
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(height: 23),
                  Divider(color: Colors.grey.shade300),
                  SizedBox(height: 31),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Don\'t have an Account",
                        style:
                            CustomTextStyles.titleSmallUrbanistGray70002Medium),
                    SizedBox(width: 16),
                    Text("Register Now",
                        style: CustomTextStyles.titleSmallUrbanistBlueA20001)
                  ]),
                  CustomElevatedButton(
                    text: "Proceed",
                    margin: EdgeInsets.fromLTRB(16.0, 30, 16.0, 0.0),
                    buttonStyle: CustomButtonStyles.fillBlackTL12,
                    onTap: () {
                      print('succeed');
                      // confirmTransfer(context);
                      forgetPassword();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapLogoone() {}
  onTapTxtForgotpassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewPasswordScreen(),
      ),
    );
  }
}
