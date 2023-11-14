import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/reusables/text_field.dart';
import 'package:hairsol/widgets/app_bar/appbar_image.dart';
import 'package:hairsol/widgets/app_bar/appbar_image_1.dart';
import 'package:hairsol/widgets/app_bar/custom_app_bar.dart';
import 'package:hairsol/widgets/custom_checkbox_button.dart';
import 'package:hairsol/widgets/custom_elevated_button.dart';
import 'package:http/http.dart' as http;

import '../../dialogs/signin_dialog.dart';
import '../forgot_password/forgot_password.dart';

class SigninPasswordScreen extends StatelessWidget {
  SigninPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future<void> signUp(BuildContext context) async {
    final String email = emailController.text;
    final String password = passwordController.text;

    // Validate input (optional)

    // Send sign-up request
    final response = await http.post(
      Uri.parse('https://your-api-endpoint.com/signup'),
      headers: {'Content-Type': 'application/json'},
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      // Registration successful, handle the response
      final Map<String, dynamic> responseData = json.decode(response.body);
      print('Registration successful: $responseData');
      // You can handle the success response here, e.g., navigate to the next screen.

      // Navigate to VerificationScreen
    } else {
      // Registration failed, handle the error
      print('Registration failed with status: ${response.statusCode}');
      // You can handle the error here, e.g., show an error message to the user.
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
                                  child: Text('Welcome',
                                      style: theme.textTheme.headlineLarge)),
                              CustomImageView(
                                  imagePath: ImageConstant.img,
                                  height: 40.v,
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 4.h))
                            ]),
                            SizedBox(height: 8),
                            Text("Lets get you started with Hairsol",
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
                        Text("Email".tr,
                            style: CustomTextStyles.headlineSmallPrimary),
                        CustomTextField(
                          controller: emailController,
                          validator: (text) {
                            if (text!.isEmpty) {
                              return 'Email is required';
                            }

                            return null; // Return null if validation passes
                          },
                          onChanged: (dynamic value) {
                            bool isValidForm;
                            // functions which are called by values changes in the Form
                            if (_formKey.currentState!.validate()) {
                              isValidForm = true;
                            } else {
                              isValidForm = false;
                            }
                          },
                          hintText: 'Enter your email',
                          prefixIcon: Icons.person,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text("Password",
                            style: CustomTextStyles.headlineSmallPrimary),
                        CustomTextField(
                          controller: passwordController,
                          validator: (text) {
                            if (text!.isEmpty) {
                              return 'Password is required';
                            }

                            return null; // Return null if validation passes
                          },
                          onChanged: (dynamic value) {
                            bool isValidForm;
                            // functions which are called by values changes in the Form
                            if (_formKey.currentState!.validate()) {
                              isValidForm = true;
                            } else {
                              isValidForm = false;
                            }
                          },
                          hintText: 'Enter your password',
                          prefixIcon: Icons.person,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomCheckboxButton(
                                  text: "Remember Password".tr,
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  textStyle: CustomTextStyles
                                      .titleSmallUrbanistGray80003,
                                  onChange: (value) {}),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 2.v),
                                      child: Text("Forgot Password?",
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
                    text: "Sign In",
                    margin: EdgeInsets.fromLTRB(16.0, 30, 16.0, 0.0),
                    buttonStyle: CustomButtonStyles.fillBlackTL12,
                    onTap: () {
                      confirmTransfer(context);
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
        builder: (context) => ForgotPasswordScreen(),
      ),
    );
  }
}
