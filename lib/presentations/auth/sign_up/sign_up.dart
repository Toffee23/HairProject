import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/presentations/auth/verify_user/verify_user.dart';
import 'package:hairsol/reusables/text_field.dart';
import 'package:hairsol/widgets/app_bar/appbar_image.dart';
import 'package:hairsol/widgets/app_bar/appbar_image_1.dart';
import 'package:hairsol/widgets/app_bar/custom_app_bar.dart';
import 'package:hairsol/widgets/custom_checkbox_button.dart';
import 'package:hairsol/widgets/custom_elevated_button.dart';

import '../../../data/apiClient/api_client.dart';
import '../../../data/models/signup/signup_response.dart';
import '../../../util/g_storage.dart';
import '../../dialogs/signin_dialog.dart';
import '../forgot_password/forgot_password.dart';

final obscureText1Provider = StateProvider<bool>((ref) => true);
final obscureText2Provider = StateProvider<bool>((ref) => true);

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final password1Controller = TextEditingController();
  final password2Controller = TextEditingController();

  @override
  void dispose() {
    firstnameController.dispose();
    lastnameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    password1Controller.dispose();
    password2Controller.dispose();
    super.dispose();
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

  onTapArrowLeftOne(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtForgotPassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ForgotPasswordScreen(),
      ),
    );
  }

  Future<void> signUp() async {
    final String firstname = firstnameController.text.trim();
    final String lastname = lastnameController.text.trim();
    final String username = usernameController.text.trim();
    final String email = emailController.text.trim();
    final String phoneNumber = phoneNumberController.text.trim();
    final String password1 = password1Controller.text.trim();
    final String password2 = password1Controller.text.trim();
    final String userType = AppStorage.mybox.read(AppStorage.user_type);
    // final String two_factor_auth_token = '123456';
    // final String id = Uuid().v4();

    if (firstname.isEmpty) {
      print('First name field can\'t be empty');
    } else if (lastname.isEmpty) {
      print('Last name field can\'t be empty');
    } else if (username.isEmpty) {
      print('Username field can\'t be empty');
    } else if (email.isEmpty) {
      print('Email field can\'t be empty');
    } else if (!email.isEmail) {
      print('Invalid email.');
    } else if (phoneNumber.isEmpty) {
      print('Phone number field can\'t be empty');
    } else if (password1.isEmpty) {
      print('Password field can\'t be empty');
    } else if (password2.isEmpty) {
      print('Confirm password field can\'t be empty');
    } else {
      AppStorage.mybox.write(AppStorage.email, email);

      final Map<String, dynamic> data = {
        // "id": id,
        "first_name": firstname,
        "last_name": lastname,
        "username": username,
        "email": email,
        "phone_number": phoneNumber,
        "password": password1,
        "user_type": userType,
        // "two_factor_auth_token": two_factor_auth_token,
      };

      final response = await ApiClient().signup(data);

      switch (response.runtimeType) {
        case (SignupResponse):
          // Successful attempt
          gotoVerificationPage();
          break;
        default:
          // Unsuccessful attempt
          final status = response['status'];
          final errMsg = response['message'];
          final data = response['data'];
          print('$status, $errMsg');
          print(response);
      }
    }
  }

  void gotoVerificationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VerificationScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(
        leadingWidth: 47.h,
        leading: AppbarImage(
            svgPath: ImageConstant.imgArrowleft,
            margin: EdgeInsets.only(left: 23.h, top: 24.v, bottom: 24.v),
            onTap: () {
              onTapArrowLeftOne(context);
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
        padding: EdgeInsets.only(bottom: 32.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
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
              SizedBox(height: 8),
              Divider(color: Colors.grey.shade700),
              Gap(16),
              CustomTextField(
                controller: firstnameController,
                validator: (text) {
                  print(text);
                  if (text!.isEmpty) {
                    return 'This field is required';
                  }
                  // return 'text';
                },
                onChanged: (String value) {},
                label: 'First Name',
                hintText: 'Enter your first name',
                prefixIcon: Icons.person,
              ),
              CustomTextField(
                controller: lastnameController,
                validator: (text) {},
                onChanged: (String value) {},
                label: 'Last Name',
                hintText: 'Enter your last name',
                prefixIcon: Icons.person,
              ),
              CustomTextField(
                controller: usernameController,
                // validator: (text){},
                validator: (text) {
                  if (text!.isEmpty) {
                    return 'user name is required';
                  }

                  return null; // Return null if validation passes
                },
                onChanged: (String value) {},
                label: 'Username',
                hintText: 'Enter your Username',
                prefixIcon: Icons.person,
              ),
              CustomTextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                validator: (text) {},
                onChanged: (String value) {},
                label: 'Email',
                hintText: 'Enter your email address',
                prefixIcon: Icons.mail,
              ),
              CustomTextField(
                keyboardType: TextInputType.phone,
                controller: phoneNumberController,
                validator: (text) {},
                onChanged: (String value) {},
                label: 'Phone Number',
                hintText: 'Enter your phone number',
                prefixIcon: Icons.phone,
              ),
              CustomTextField(
                controller: password1Controller,
                validator: (text) {},
                onChanged: (String value) {},
                keyboardType: TextInputType.visiblePassword,
                label: 'Password',
                hintText: 'Enter your password',
                prefixIcon: Icons.lock,
                suffixIcon: IconButton(
                    onPressed: () => ref
                        .read(obscureText1Provider.notifier)
                        .update((state) => !state),
                    icon: ref.watch(obscureText1Provider)
                        ? Icon(
                            CupertinoIcons.eye_slash_fill,
                            color: Colors.grey,
                          )
                        : Icon(
                            CupertinoIcons.eye_fill,
                            color: Color(0xFFBB957B),
                          )),
                obscureText: ref.watch(obscureText1Provider),
              ),
              CustomTextField(
                textInputAction: TextInputAction.done,
                controller: password2Controller,
                validator: (text) {},
                onChanged: (String value) {},
                keyboardType: TextInputType.visiblePassword,
                label: 'Confirm Password',
                hintText: 'Renter your password',
                prefixIcon: Icons.lock,
                suffixIcon: IconButton(
                    onPressed: () => ref
                        .read(obscureText2Provider.notifier)
                        .update((state) => !state),
                    icon: ref.watch(obscureText2Provider)
                        ? Icon(
                            CupertinoIcons.eye_slash_fill,
                            color: Colors.grey,
                          )
                        : Icon(
                            CupertinoIcons.eye_fill,
                            color: Color(0xFFBB957B),
                          )),
                obscureText: ref.watch(obscureText2Provider),
              ),
              SizedBox(height: 32),
              CustomCheckboxButton(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  text: "Accept the Terms & Conditions",
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  textStyle: CustomTextStyles.titleSmallUrbanistGray80003,
                  onChange: (value) {}),
              CustomElevatedButton(
                text: "Sign Up",
                margin: EdgeInsets.fromLTRB(16.0, 16, 16.0, 0.0),
                buttonStyle: CustomButtonStyles.fillBlackTL12,
                onTap: () {
                  signUp();
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => VerificationScreen(),
                  //   ),
                  // );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
