import 'package:flutter/material.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SlidetwoScreen extends StatelessWidget {
  const SlidetwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            CustomImageView(
              imagePath: ImageConstant.imgSteptodown3,
              height: 341.v,
              width: 336.h,
            ),
            SizedBox(height: 20.v),
            Text(
              "Your Beauty, Your Way",
              style: CustomTextStyles.headlineSmallGray800,
            ),
            SizedBox(height: 4.v),
            Text(
              "Browse our diverse range of beauty professionals in your area. Filter by services, ratings, and more. View portfolios, read reviews, and make your choice. With Harisol, you're in control.".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumGray70002.copyWith(
                height: 1.60,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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

              ],
            )

          ],
        )
      ),
    );
  }
}
