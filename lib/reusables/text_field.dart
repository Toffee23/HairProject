import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/custom_text_style.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? label;
  final IconData prefixIcon;
  final Widget? suffixIcon; // Nullable IconData for the suffix icon
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final bool obscureText;

  final String? labelText;
  final String? errorText;
  final TextInputAction? textInputAction;

  const CustomTextField({
    required this.controller,
    required this.hintText,
    this.label,
    required this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.obscureText = false,

    this.labelText,
    this.errorText,
    this.textInputAction = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null) Text(label!.tr, style: CustomTextStyles.headlineSmallPrimary),
          TextFormField(
            controller: controller,
            validator: validator,
            onChanged: onChanged,
            keyboardType: keyboardType,
            obscureText: obscureText,
            textInputAction: textInputAction,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFBB957B),
                ),
              ),
              hintText: hintText,
              hintStyle: CustomTextStyles.titleMediumGray50003,
              border: OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              prefixIcon: Icon(
                prefixIcon,
                color: Color(0xFFBB957B),
              ),
              suffixIcon: suffixIcon,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
            ),
          ),
        ],
      ),
    );
  }
}

// Example usage for a password field with a suffix icon:
/*
CustomTextField(
controller: passwordController,
hintText: "Enter Password".tr,
prefixIcon: Icons.lock,
suffixIcon: Icons.visibility, // Add the suffix icon as needed
obscureText: true,
// other optional parameters can be added as needed
)
*/
