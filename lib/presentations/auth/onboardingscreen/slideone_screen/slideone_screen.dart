import 'package:flutter/material.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SlideoneScreen extends StatelessWidget{
  const SlideoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            CustomImageView(
              imagePath: ImageConstant.imgSteptodown4,
              height: 362.v,
              width: 363.h,
            ),
            SizedBox(height: 9.v),
            Text(
              "Welcome to Harisol",
              style: CustomTextStyles.headlineSmallGray800,
            ),
            SizedBox(height: 9.v),
            Text(
              "Your premier destination for beauty services. Discover a world of talented stylists, makeup artists, and more right at your fingertips. Get ready to transform your beauty routine!".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumGray70002.copyWith(
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 9,
                  width: 40,
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                Container(
                  height: 9,
                  width: 9,
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                Container(
                  height: 9,
                  width: 9,
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),

              ],
            )

          ],
        )
      ),
    );
  }
}
