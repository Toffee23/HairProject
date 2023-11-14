import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/data/apiClient/api_client.dart';
import 'package:hairsol/presentations/auth/choose_registration/choose_registration.dart';
import 'package:hairsol/presentations/auth/sign_up/sign_up.dart';
import 'package:hairsol/reusables/text_field.dart';
import 'package:hairsol/widgets/app_bar/appbar_image.dart';
import 'package:hairsol/widgets/app_bar/appbar_image_1.dart';
import 'package:hairsol/widgets/app_bar/custom_app_bar.dart';
import 'package:hairsol/widgets/custom_checkbox_button.dart';
import 'package:hairsol/widgets/custom_elevated_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/models/login/login_model.dart';
import '../../dialogs/signin_dialog.dart';
import '../forgot_password/forgot_password.dart';

final obscureTextProvider = StateProvider<bool>((ref) => true);

class SigninPasswordScreen extends ConsumerStatefulWidget {
  SigninPasswordScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SigninPasswordScreen> createState() => _SigninPasswordScreenState();
}

class _SigninPasswordScreenState extends ConsumerState<SigninPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> signIn() async {
    final String email = emailController.text.trim();
    final String password = passwordController.text.trim();

    if (email.isEmpty) {
      // Email field is empty
      print('Email field can\'t be empty');
    }
    else if (!email.isEmail) {
      // Email is not a valid one.
      print('Invalid email.');
    } else if (password.isEmpty) {
      // Email is not a valid one.
      print('Password field is empty');
    }
    else {

      final response = await ApiClient().login(email, password);

      switch (response.runtimeType) {
        case (LoginModel) :
          // Successful attempt
          confirmTransfer();
          break;
        default:
          // Unsuccessful attempt
          final status = response['status'];
          final errMsg = response['message'];
          print('$status, $errMsg');
      }
    }
  }

  confirmTransfer() async {

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
                  SizedBox(height: 16),
                  CustomTextField(
                    label: 'Email',
                    controller: emailController,
                    validator: (text){},
                    onChanged: (String value){},
                    hintText: 'Enter your email address',
                    prefixIcon: Icons.mail ,
                  ),
                  CustomTextField(
                    label: 'Password',
                    controller: passwordController,
                    validator: (text){
                      return null;
                    },
                    onChanged: (String value){},
                    hintText: 'Enter password',
                    prefixIcon: Icons.lock,
                    suffixIcon: IconButton(
                      onPressed: () => ref.read(obscureTextProvider.notifier).update((state) => !state),
                      icon: ref.watch(obscureTextProvider) ?
                      Icon(
                        CupertinoIcons.eye_slash_fill,
                        color: Colors.grey,
                      ) :
                      Icon(
                        CupertinoIcons.eye_fill,
                        color: Color(0xFFBB957B),
                      )
                    ),
                    obscureText: ref.watch(obscureTextProvider),
                  ),
                  SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCheckboxButton(
                            text: "Remember Password".tr,
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            textStyle: CustomTextStyles
                                .titleSmallUrbanistGray80003,
                            onChange: (value) {
                            }),
                        GestureDetector(
                            onTap: () {
                              onTapTxtForgotpassword(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("Forgot Password?",
                                    style: CustomTextStyles
                                        .titleSmallUrbanistRedA700)))
                      ]
                    ),
                  ),
                  SizedBox(height: 23),
                  Divider(color: Colors.grey.shade300),
                  SizedBox(height: 31),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Don\'t have an Account",
                        style: CustomTextStyles
                            .titleSmallUrbanistGray70002Medium),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChooseRegistrationScreen(),
                          ),
                        );
                      },
                      child: Text("Register Now",
                          style:
                              CustomTextStyles.titleSmallUrbanistBlueA20001),
                    )
                  ]),
                  CustomElevatedButton(
                    text: "Sign In",
                    margin: EdgeInsets.fromLTRB(16.0, 30, 16.0, 0.0),
                      buttonStyle: CustomButtonStyles.fillBlackTL12,
                    onTap: () {
                      signIn();
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
Navigator.pop(context);  }

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
