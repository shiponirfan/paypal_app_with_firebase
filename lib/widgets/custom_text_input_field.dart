import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';

class CustomTextInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? obscureText;

  const CustomTextInputField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      style: GoogleFonts.manrope(
          textStyle: TextStyle(
        color: AppColors.subTitle,
        fontSize: 14,
      )),
    );
  }
}