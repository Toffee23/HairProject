import 'package:flutter/material.dart';
import 'package:hairsol/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius: BorderRadius.circular(24.h),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.gray90002.withOpacity(0.2),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          5,
                        ),
                      ),
                    ],
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGrayTL5 => BoxDecoration(
        color: appTheme.gray50003,
        borderRadius: BorderRadius.circular(5.h),
        border: Border.all(
          color: appTheme.gray50003,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray20002,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillGrayTL7 => BoxDecoration(
        color: appTheme.gray60007,
        borderRadius: BorderRadius.circular(7.h),
      );
  static BoxDecoration get outlineTealF => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(30.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.teal507f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
}
