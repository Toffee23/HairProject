import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/data/apiClient/api_client.dart';
import 'package:hairsol/util/g_storage.dart';
import 'package:hairsol/widgets/app_bar/appbar_image.dart';
import 'package:hairsol/widgets/app_bar/appbar_image_1.dart';
import 'package:hairsol/widgets/app_bar/custom_app_bar.dart';
import 'package:hairsol/widgets/custom_elevated_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VerificationScreen extends ConsumerStatefulWidget {
  VerificationScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends ConsumerState<VerificationScreen> {
  late List<TextEditingController?> _controllers;

  @override
  void dispose() {
    super.dispose();
    for (var c in _controllers) c?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leadingWidth: 52.h,
          leading: AppbarImage(
              svgPath: ImageConstant.imgArrowleft,
              margin: EdgeInsets.only(left: 28.h, top: 24.v, bottom: 24.v),
              onTap: () {
                onTapArrowleftone();
              }),
          actions: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(top: 4),
              child: AppbarImage1(
                  imagePath: ImageConstant.imgLogo,
                  onTap: () {
                    onTapLogoone();
                  }),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                    ),
                    Text(
                      "Verify you Account".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    Text("Input the Verification code sent to you".tr,
                        style: CustomTextStyles.titleMediumBlack90004),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(),
                Container(
                  margin: const EdgeInsets.only(top: 100, bottom: 24),
                  child: OtpTextField(
                    numberOfFields: 6,
                    focusedBorderColor: const Color(0xFFFE6778),
                    showFieldAsBox: true,
                    // fieldWidth: 45,
                    // borderWidth: 1.5,
                    handleControllers: (controllers) =>
                        _controllers = controllers,
                    // enabledBorderColor:  const Color(0xFFFE6778),
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every text field is filled
                    onSubmit: (String verificationCode) {
                      _verifyUser(verificationCode);
                    }, // end onSubmit
                  ),
                ),
                Center(
                  child: Text("Code sent to you Email".tr,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleSmallInterPrimary),
                ),
                SizedBox(
                  height: 8,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "I didnt get the code".tr,
                      style: CustomTextStyles.titleSmallInterGray50003,
                    ))
              ],
            ),
            CustomElevatedButton(
                text: "Proceed".tr,
                margin: EdgeInsets.only(left: 22.h, right: 26.h, bottom: 59.v),
                buttonStyle: CustomButtonStyles.fillBlackTL12,
                onTap: () {
                  onTapProceed();
                })
          ],
        ),
      ),
    );
  }

  onTapLogoone() {}

  onTapProceed() async {
    final String verificationCode = _controllers.map((e) => e?.text).join();
    if (verificationCode.length != 6) {
      // Verification code hasn't been entered at all or completely.
      print("Verification code hasn't been entered at all or completely.");
      return;
    }
    _verifyUser(verificationCode);
  }

  onTapArrowleftone() {
    Get.back();
  }

  Future<void> _verifyUser(String verificationCode) async {
    final req =
        await ApiClient().verifyUser(AppStorage.email, verificationCode);
    print(req);
    switch (req) {
      case (true):
      // SUCCESSFUL ATTEMp
      default:
        print('Failed');
    }
  }
}
