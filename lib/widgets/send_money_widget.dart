import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';

class SendMoneyWidget extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;
  final bool? isFilled;

  const SendMoneyWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isFilled = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 110,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 48,
                  spreadRadius: -18,
                  offset: const Offset(0, 24))
            ],
            gradient: isFilled == false
                ? null
                : LinearGradient(
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                    colors: [
                        AppColors.gradientColorOne,
                        AppColors.gradientColorTwo,
                      ])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                icon,
                width: 30,
                fit: BoxFit.fitWidth,
              ),
              Text(
                title,
                style: GoogleFonts.manrope(
                    textStyle: TextStyle(
                  fontSize: 16,
                  color: isFilled == true
                      ? Colors.white
                      : AppColors.gradientColorTwo,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
