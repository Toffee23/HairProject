import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hairsol/core/app_export.dart';

import '../../theme/custom_text_style.dart';

class SignInDialog extends StatelessWidget {
  const SignInDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2.2,
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Column(
        children: [
          CustomImageView(
              svgPath: ImageConstant.imgGroup22, height: 170.v, width: 159.h),
          SizedBox(height: 23.v),
          SizedBox(
              width: 113.h,
              child: Text("Sign in Successful".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallGray60007
                      .copyWith(height: 1.60))),
          SizedBox(height: 16.v),
          SizedBox(
            width: 275.h,
            child: Text(
              "Please wait you..\nYou will be directed to the Homepage soon".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallUrbanistGray70002Medium
                  .copyWith(height: 1.60),
            ),
          ),
          SizedBox(height: 16.v),
          CircularProgressIndicator(
            color: Colors.blue,
            strokeWidth: 5,
          ),
        ],
      ),
    );
  }
}
