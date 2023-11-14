import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeLoraPrimary => theme.textTheme.bodyLarge!.lora.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get bodyLargeLoraWhiteA700 => theme.textTheme.bodyLarge!.lora.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get bodyLargeMondaGray40001 =>
      theme.textTheme.bodyLarge!.monda.copyWith(
        color: appTheme.gray40001,
      );
  static get bodyLargeMondaPrimary => theme.textTheme.bodyLarge!.monda.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeOpenSansPrimary =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
      );
  static get bodyLargePoppinsErrorContainer =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 16.fSize,
      );
  static get bodyLargePoppinsGray60003 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray60003,
        fontSize: 16.fSize,
      );
  static get bodyLargePoppinsPrimary =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get bodyLargeSansationBlack90007 =>
      theme.textTheme.bodyLarge!.sansation.copyWith(
        color: appTheme.black90007,
        fontSize: 17.fSize,
      );
  static get bodyLargeSansationGray60007 =>
      theme.textTheme.bodyLarge!.sansation.copyWith(
        color: appTheme.gray60007,
        fontSize: 17.fSize,
      );
  static get bodyLargeSansationPrimary =>
      theme.textTheme.bodyLarge!.sansation.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
      );
  static get bodyLargeSourceSerifProGray90003 =>
      theme.textTheme.bodyLarge!.sourceSerifPro.copyWith(
        color: appTheme.gray90003,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeSourceSerifProGray9000316 =>
      theme.textTheme.bodyLarge!.sourceSerifPro.copyWith(
        color: appTheme.gray90003,
        fontSize: 16.fSize,
      );
  static get bodyLargeSourceSerifProPrimary =>
      theme.textTheme.bodyLarge!.sourceSerifPro.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeSourceSerifProPrimary16 =>
      theme.textTheme.bodyLarge!.sourceSerifPro.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
        fontSize: 16.fSize,
      );
  static get bodyLargeSourceSerifProPrimary16_1 =>
      theme.textTheme.bodyLarge!.sourceSerifPro.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get bodyLargeSourceSerifProWhiteA700 =>
      theme.textTheme.bodyLarge!.sourceSerifPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get bodyMediumAdaminaGray50001 =>
      theme.textTheme.bodyMedium!.adamina.copyWith(
        color: appTheme.gray50001,
        fontSize: 14.fSize,
      );
  static get bodyMediumAdaminaGray60005 =>
      theme.textTheme.bodyMedium!.adamina.copyWith(
        color: appTheme.gray60005,
        fontSize: 14.fSize,
      );
  static get bodyMediumAdaminaGray700 =>
      theme.textTheme.bodyMedium!.adamina.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumAdaminaWhiteA700 =>
      theme.textTheme.bodyMedium!.adamina.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumAdaminaWhiteA70014 =>
      theme.textTheme.bodyMedium!.adamina.copyWith(
        color: appTheme.whiteA700.withOpacity(0.67),
        fontSize: 14.fSize,
      );
  static get bodyMediumAdaminaYellow800 =>
      theme.textTheme.bodyMedium!.adamina.copyWith(
        color: appTheme.yellow800,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsGray70001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray70001,
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsGray7000113 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray70001,
        fontSize: 13.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumRobotoBluegray40002 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 14.fSize,
      );
  static get bodyMediumRobotoPrimary =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumSourceSerifProBluegray40005 =>
      theme.textTheme.bodyMedium!.sourceSerifPro.copyWith(
        color: appTheme.blueGray40005,
        fontSize: 14.fSize,
      );
  static get bodyMediumSourceSerifProGray60007 =>
      theme.textTheme.bodyMedium!.sourceSerifPro.copyWith(
        color: appTheme.gray60007,
        fontSize: 14.fSize,
      );
  static get bodyMediumSourceSerifProGray90003 =>
      theme.textTheme.bodyMedium!.sourceSerifPro.copyWith(
        color: appTheme.gray90003,
        fontSize: 14.fSize,
      );
  static get bodyMediumSourceSerifProPrimary =>
      theme.textTheme.bodyMedium!.sourceSerifPro.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumSourceSerifProWhiteA700 =>
      theme.textTheme.bodyMedium!.sourceSerifPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumSourceSerifProWhiteA70014 =>
      theme.textTheme.bodyMedium!.sourceSerifPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallAdaminaWhiteA700 =>
      theme.textTheme.bodySmall!.adamina.copyWith(
        color: appTheme.whiteA700.withOpacity(0.64),
        fontSize: 12.fSize,
      );
  static get bodySmallGray50004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50004,
        fontSize: 12.fSize,
      );
  static get bodySmallGray50006 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50006,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoBluegray40002 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoBluegray4000212 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoBluegray4000212_1 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoBluegray40002_1 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodySmallRobotoBluegray40008 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray40008,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoBluegray4000812 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray40008,
        fontSize: 12.fSize,
      );
  static get bodySmallSansationOnPrimary =>
      theme.textTheme.bodySmall!.sansation.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
      );
  static get headlineLargeBlack90007 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90007,
      );
  static get headlineLargeInterGray90004 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.gray90004,
        fontSize: 32.fSize,
      );
  static get headlineMediumGray90003 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get headlineSmallAmitaGray90005 =>
      theme.textTheme.headlineSmall!.amita.copyWith(
        color: appTheme.gray90005,
      );
  static get headlineSmallGray60007 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray60007,
      );
  static get headlineSmallGray800 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray800,
      );
  static get headlineSmallLatoGray60006 =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: appTheme.gray60006,
      );
  static get headlineSmallLoraGray80008 =>
      theme.textTheme.headlineSmall!.lora.copyWith(
        color: appTheme.gray80008,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallLoraPrimary =>
      theme.textTheme.headlineSmall!.lora.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallLoraPrimarySemiBold =>
      theme.textTheme.headlineSmall!.lora.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallLoraWhiteA700 =>
      theme.textTheme.headlineSmall!.lora.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallOpenSansPrimary =>
      theme.textTheme.headlineSmall!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallRobotoPrimaryContainer =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallSourceSerifProPrimary =>
      theme.textTheme.headlineSmall!.sourceSerifPro.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w300,
      );
  // Label text style
  static get labelLargeGray3007c => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray3007c,
      );
  static get labelLargePoppinsDeeppurpleA20002 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.deepPurpleA20002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsGray500 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsGray60006 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray60006,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsWhiteA700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRobotoBluegray300 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRobotoBluegray300_1 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.blueGray300,
      );
  static get labelLargeRobotoBluegray40002 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.blueGray40002,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSourceSerifProBluegray40003 =>
      theme.textTheme.labelLarge!.sourceSerifPro.copyWith(
        color: appTheme.blueGray40003,
        fontWeight: FontWeight.w900,
      );
  static get labelLargeSourceSerifProBluegray40007 =>
      theme.textTheme.labelLarge!.sourceSerifPro.copyWith(
        color: appTheme.blueGray40007,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumBluegray40002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 10.fSize,
      );
  static get labelMediumPoppinsWhiteA700 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.87),
        fontSize: 10.fSize,
      );
  // Title text style
  static get titleLargeAdaminaGray90002 =>
      theme.textTheme.titleLarge!.adamina.copyWith(
        color: appTheme.gray90002,
      );
  static get titleLargeAdaminaPrimary =>
      theme.textTheme.titleLarge!.adamina.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.64),
      );
  static get titleLargeAmitaGray90002 =>
      theme.textTheme.titleLarge!.amita.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterGray90004 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeLoraPrimary => theme.textTheme.titleLarge!.lora.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsGray80006 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray80006,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsWhiteA700 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsWhiteA700SemiBold =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsWhiteA700SemiBold22 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRobotoWhiteA700 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.whiteA700.withOpacity(0.87),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoWhiteA700Medium =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.whiteA700.withOpacity(0.87),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoWhiteA700Medium22 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.whiteA700.withOpacity(0.87),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumBlack90003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90003,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack90004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90004,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlueA20001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA20001,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get titleMediumGray50003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50003,
      );
  static get titleMediumGray60007 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60007,
      );
  static get titleMediumGray70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray70002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray70002_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray70002,
      );
  static get titleMediumGray80003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80003,
      );
  static get titleMediumGray80005 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80005,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLoraBlack90006 =>
      theme.textTheme.titleMedium!.lora.copyWith(
        color: appTheme.black90006,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLoraBlack90006SemiBold =>
      theme.textTheme.titleMedium!.lora.copyWith(
        color: appTheme.black90006,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLoraGray80002 =>
      theme.textTheme.titleMedium!.lora.copyWith(
        color: appTheme.gray80002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLoraGray90003 =>
      theme.textTheme.titleMedium!.lora.copyWith(
        color: appTheme.gray90003,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLoraOnSecondaryContainer =>
      theme.textTheme.titleMedium!.lora.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLoraPrimary =>
      theme.textTheme.titleMedium!.lora.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLoraPrimarySemiBold =>
      theme.textTheme.titleMedium!.lora.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLoraWhiteA700 =>
      theme.textTheme.titleMedium!.lora.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansPrimary =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOpenSansPrimary17 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
      );
  static get titleMediumPoppinsBluegray40006 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray40006,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBluegray800 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray50003 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray50003,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray50003SemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray50003,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsGray60004 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray60004,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray60006 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray60006,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray60006SemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray60006,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsGray70003 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray70003,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray80001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray80001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsPrimaryMedium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsWhiteA700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsWhiteA70018 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleMediumPoppinsWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsWhiteA700SemiBold18 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsWhiteA700SemiBold18_1 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRobotoPink300 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.pink300,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoPrimary =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.73),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoPrimaryContainer =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoPrimaryMedium =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoWhiteA700 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoWhiteA700Medium =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSourceSerifProGray50002 =>
      theme.textTheme.titleMedium!.sourceSerifPro.copyWith(
        color: appTheme.gray50002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSourceSerifProGray60006 =>
      theme.textTheme.titleMedium!.sourceSerifPro.copyWith(
        color: appTheme.gray60006,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSourceSerifProGray60007 =>
      theme.textTheme.titleMedium!.sourceSerifPro.copyWith(
        color: appTheme.gray60007,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSourceSerifProGray60007SemiBold =>
      theme.textTheme.titleMedium!.sourceSerifPro.copyWith(
        color: appTheme.gray60007,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSourceSerifProGray90003 =>
      theme.textTheme.titleMedium!.sourceSerifPro.copyWith(
        color: appTheme.gray90003,
      );
  static get titleMediumSourceSerifProGray90003SemiBold =>
      theme.textTheme.titleMedium!.sourceSerifPro.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSourceSerifProWhiteA700 =>
      theme.textTheme.titleMedium!.sourceSerifPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmallInterBluegray700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterGray50 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray50,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterGray50003 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray50003,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterGray90004 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray90004,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsBluegray40001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray60002 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray60006 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray60006,
      );
  static get titleSmallPoppinsGray60007 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray60007,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsSecondaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsWhiteA700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRobotoPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRobotoPrimaryMedium =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoWhiteA700 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRobotoWhiteA700Medium =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.whiteA700.withOpacity(0.87),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSourceSerifProBluegray90001 =>
      theme.textTheme.titleSmall!.sourceSerifPro.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleSmallSourceSerifProGray50002 =>
      theme.textTheme.titleSmall!.sourceSerifPro.copyWith(
        color: appTheme.gray50002,
        fontWeight: FontWeight.w900,
      );
  static get titleSmallSourceSerifProGray80002 =>
      theme.textTheme.titleSmall!.sourceSerifPro.copyWith(
        color: appTheme.gray80002,
      );
  static get titleSmallSourceSerifProPrimary =>
      theme.textTheme.titleSmall!.sourceSerifPro.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallUrbanistBlueA200 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.blueA200,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallUrbanistBlueA20001 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.blueA20001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallUrbanistGray60007 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.gray60007,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallUrbanistGray60007Medium =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.gray60007,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallUrbanistGray70002 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.gray70002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallUrbanistGray70002Medium =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.gray70002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallUrbanistGray80003 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.gray80003,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallUrbanistIndigoA700 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallUrbanistRedA700 =>
      theme.textTheme.titleSmall!.urbanist.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get adamina {
    return copyWith(
      fontFamily: 'Adamina',
    );
  }

  TextStyle get monda {
    return copyWith(
      fontFamily: 'Monda',
    );
  }

  TextStyle get lora {
    return copyWith(
      fontFamily: 'Lora',
    );
  }

  TextStyle get sourceSerifPro {
    return copyWith(
      fontFamily: 'Source Serif Pro',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get amita {
    return copyWith(
      fontFamily: 'Amita',
    );
  }

  TextStyle get sansation {
    return copyWith(
      fontFamily: 'Sansation',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }
}
