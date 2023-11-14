import 'package:flutter/material.dart';
import 'package:hairsol/core/app_export.dart';
import 'package:hairsol/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SlidethreeScreen extends StatelessWidget {
  const SlidethreeScreen({Key? key})
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
              imagePath: ImageConstant.imgSteptodown5,
              height: 350.v,
              width: 351.h,
            ),
            SizedBox(height: 21.v),
            Text(
              "Easy Booking, Stunning Results",
              style: CustomTextStyles.headlineSmallGray800,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 2.v,
                right: 10.h,
              ),
                child: Text(
                "Ready to book your appointment? With Harisol,"
                    "it's a breeze. Select your preferred date and time, enter your contact "
                    "info, and make secure payments. You're just a click away from stunning results.",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleMediumGray70002.copyWith(
                ),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
