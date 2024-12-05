import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal_ui_with_firebase/presentations/views/splash_view.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';

class PayPalApp extends StatelessWidget {
  const PayPalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: _buildInputDecorationTheme(),
      ),
      home: const SplashView(),
    );
  }

  InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
      hintStyle: GoogleFonts.manrope(
          textStyle: TextStyle(
        color: AppColors.subTitle.withOpacity(0.5),
        fontSize: 14,
      )),
      focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2,
          )),
      enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
          )),
    );
  }
}
