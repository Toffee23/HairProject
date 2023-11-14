import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: appTheme.red80072,
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray60006,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray90002,
          fontSize: 18.fSize,
          fontFamily: 'Adamina',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray90001,
          fontSize: 15.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray40009,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 36.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 30.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 28.fSize,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray80007,
          fontSize: 24.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 12.fSize,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: colorScheme.primary.withOpacity(0.73),
          fontSize: 11.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black90006,
          fontSize: 20.fSize,
          fontFamily: 'Sansation',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray80007,
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray400,
          fontSize: 14.fSize,
          fontFamily: 'Lora',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF000000),
    primaryContainer: Color(0XDD141C29),
    secondary: Color(0XDD141C29),
    secondaryContainer: Color(0XFF6C6977),
    tertiary: Color(0XDD141C29),
    tertiaryContainer: Color(0XFF6C6977),

    // Background colors
    background: Color(0XDD141C29),

    // Surface colors
    surface: Color(0XDD141C29),
    surfaceTint: Color(0XFF2A2E3B),
    surfaceVariant: Color(0XFF6C6977),

    // Error colors
    error: Color(0XFF2A2E3B),
    errorContainer: Color(0XFFA4A4AC),
    onError: Color(0XFFFFFBFE),
    onErrorContainer: Color(0XDD141C29),

    // On colors(text colors)
    onBackground: Color(0XFFA5A5A5),
    onInverseSurface: Color(0XFFFFFBFE),
    onPrimary: Color(0XFF2A2E3B),
    onPrimaryContainer: Color(0XFFA5A5A5),
    onSecondary: Color(0XFFA5A5A5),
    onSecondaryContainer: Color(0XFF121111),
    onTertiary: Color(0XFFA5A5A5),
    onTertiaryContainer: Color(0XFF121111),

    // Other colors
    outline: Color(0XFF2A2E3B),
    outlineVariant: Color(0XDD141C29),
    scrim: Color(0XDD141C29),
    shadow: Color(0XFF2A2E3B),

    // Inverse colors
    inversePrimary: Color(0XDD141C29),
    inverseSurface: Color(0XFF2A2E3B),

    // Pending colors
    onSurface: Color(0XFFA5A5A5),
    onSurfaceVariant: Color(0XFF121111),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF010101);
  Color get black90001 => Color(0XFF0B0B0B);
  Color get black90002 => Color(0XFF070707);
  Color get black90003 => Color(0XFF020202);
  Color get black90004 => Color(0XFF050505);
  Color get black90005 => Color(0XFF090909);
  Color get black90006 => Color(0XFF040404);
  Color get black90007 => Color(0XFF030303);

  // Blue
  Color get blue50 => Color(0XFFEAF6FF);
  Color get blue500 => Color(0XFF2196F3);
  Color get blueA100 => Color(0XFF86B1F2);
  Color get blueA200 => Color(0XFF5E8FF3);
  Color get blueA20001 => Color(0XFF477FF1);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFCDCDCD);
  Color get blueGray10002 => Color(0XFFD3D3D3);
  Color get blueGray10003 => Color(0XFFD7D7D7);
  Color get blueGray10004 => Color(0XFFCFCFCF);
  Color get blueGray300 => Color(0XFF8293B0);
  Color get blueGray400 => Color(0XFF7E8EAA);
  Color get blueGray40001 => Color(0XFF84848B);
  Color get blueGray40002 => Color(0XFF7988A3);
  Color get blueGray40003 => Color(0XFF8F8B8C);
  Color get blueGray40004 => Color(0XFF86878B);
  Color get blueGray40005 => Color(0XFF77838F);
  Color get blueGray40006 => Color(0XFF85859B);
  Color get blueGray40007 => Color(0XFF8A8D8D);
  Color get blueGray40008 => Color(0XFF7888A3);
  Color get blueGray40009 => Color(0XFF8D8D8D);
  Color get blueGray40010 => Color(0XFF65A98C);
  Color get blueGray40011 => Color(0XFF86859B);
  Color get blueGray40012 => Color(0XFF888888);
  Color get blueGray40019 => Color(0X197090B0);
  Color get blueGray50 => Color(0XFFF0F0F1);
  Color get blueGray700 => Color(0XFF535662);
  Color get blueGray800 => Color(0XFF3C3A52);
  Color get blueGray80001 => Color(0XFF333A46);
  Color get blueGray900 => Color(0XFF32383E);
  Color get blueGray90001 => Color(0XFF313B3B);

  // DeepOrange
  Color get deepOrange50 => Color(0XFFFFE8E0);
  Color get deepOrange500 => Color(0XFFFF4B26);

  // DeepPurple
  Color get deepPurpleA200 => Color(0XFF693EFF);
  Color get deepPurpleA20001 => Color(0XFF7960FB);
  Color get deepPurpleA20002 => Color(0XFF6043F5);

  // Gray
  Color get gray100 => Color(0XFFF6F6F8);
  Color get gray10001 => Color(0XFFF5F4F4);
  Color get gray10002 => Color(0XFFF3F1FF);
  Color get gray200 => Color(0XFFEAEBEC);
  Color get gray20001 => Color(0XFFEEEEEE);
  Color get gray20002 => Color(0XFFEFEFEF);
  Color get gray20003 => Color(0XFFE8E8E8);
  Color get gray300 => Color(0XFFD8DDEB);
  Color get gray30001 => Color(0XFFD9DBDB);
  Color get gray30002 => Color(0XFFE9DCD1);
  Color get gray30003 => Color(0XFFEFDDD2);
  Color get gray30004 => Color(0XFFDBDBDB);
  Color get gray30005 => Color(0XFFEAE7E3);
  Color get gray30006 => Color(0XFFE6E6E6);
  Color get gray30007 => Color(0XFFE5E5E5);
  Color get gray400 => Color(0XFFB5B5B5);
  Color get gray40001 => Color(0XFFB6B6B6);
  Color get gray40002 => Color(0XFFB3B3B3);
  Color get gray50 => Color(0XFFFBFBFB);
  Color get gray500 => Color(0XFF9E9EA5);
  Color get gray50001 => Color(0XFF9B8FAD);
  Color get gray50002 => Color(0XFFBE9779);
  Color get gray50003 => Color(0XFFBB957B);
  Color get gray50004 => Color(0XFF919191);
  Color get gray50005 => Color(0XFFAAAAAA);
  Color get gray50006 => Color(0XFF929292);
  Color get gray50059 => Color(0X59C19A7C);
  Color get gray5001 => Color(0XFFFFF7F1);
  Color get gray5002 => Color(0XFFFFF9F7);
  Color get gray5003 => Color(0XFFF9F9F9);
  Color get gray5004 => Color(0XFFF8F8F8);
  Color get gray600 => Color(0XFF7A7A7A);
  Color get gray60001 => Color(0XFFA6876E);
  Color get gray60002 => Color(0XFF757575);
  Color get gray60003 => Color(0XFF707070);
  Color get gray60004 => Color(0XFF6C6C6C);
  Color get gray60005 => Color(0XFF6B617A);
  Color get gray60006 => Color(0XFF7F7F7F);
  Color get gray60007 => Color(0XFF736E6C);
  Color get gray60072 => Color(0X727E6868);
  Color get gray700 => Color(0XFF5C4E72);
  Color get gray70001 => Color(0XFF666666);
  Color get gray70002 => Color(0XFF59606E);
  Color get gray70003 => Color(0XFF5B5B5B);
  Color get gray800 => Color(0XFF57504A);
  Color get gray80001 => Color(0XFF484848);
  Color get gray80002 => Color(0XFF403A3B);
  Color get gray80003 => Color(0XFF54534B);
  Color get gray80004 => Color(0XFF3A3C3E);
  Color get gray80005 => Color(0XFF52514F);
  Color get gray80006 => Color(0XFF4A4A4A);
  Color get gray80007 => Color(0XFF404040);
  Color get gray80008 => Color(0XFF383838);
  Color get gray900 => Color(0XFF1C1B1F);
  Color get gray90001 => Color(0XFF161722);
  Color get gray90002 => Color(0XFF1C0D33);
  Color get gray90003 => Color(0XFF1E2022);
  Color get gray90004 => Color(0XFF1A1D1F);
  Color get gray90005 => Color(0XFF1C0C33);

  // Grayf
  Color get gray2007f => Color(0X7FEDE8EE);
  Color get gray507f => Color(0X7FF5F6FF);

  // Grayc
  Color get gray3007c => Color(0X7CDDDDDD);

  // Graya
  Color get gray6003a => Color(0X3A808080);

  // Green
  Color get green50 => Color(0XFFE7F2ED);
  Color get green500 => Color(0XFF42B245);
  Color get green50001 => Color(0XFF63B053);

  // Indigo
  Color get indigo200 => Color(0XFFA0B6DA);
  Color get indigo600 => Color(0XFF39579B);
  Color get indigoA700 => Color(0XFF0F33EE);

  // LightGreen
  Color get lightGreen300 => Color(0XFF9EF389);
  Color get lightGreen30001 => Color(0XFF90F178);
  Color get lightGreen500 => Color(0XFF6BEC4B);

  // Orange
  Color get orange700 => Color(0XFFE98209);

  // Pink
  Color get pink300 => Color(0XFFEE6B8D);

  // Purple
  Color get purple50033 => Color(0X33BE00BD);

  // Red
  Color get red300 => Color(0XFFFE6778);
  Color get red50 => Color(0XFFFFF0EA);
  Color get red5001 => Color(0XFFFFF3EA);
  Color get red80072 => Color(0X72CE2A2A);
  Color get redA700 => Color(0XFFFF0000);

  // Tealf
  Color get teal507f => Color(0X7FCFECF8);

  // Teal
  Color get teal900 => Color(0XFF175C4C);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
  Color get whiteA70001 => Color(0XFFFDFDFD);

  // Yellow
  Color get yellow800 => Color(0XFFFCA818);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
