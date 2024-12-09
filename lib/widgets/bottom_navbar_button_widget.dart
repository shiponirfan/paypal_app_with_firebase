import 'package:flutter/material.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';

class BottomNavbarButtonWidget extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;
  final bool isSelected;

  const BottomNavbarButtonWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 24,
            height: 24,
            fit: BoxFit.contain,
            color: isSelected
                ? AppColors.primaryColor
                : AppColors.primaryTextColor,
          ),
          const SizedBox(
            width: 5,
          ),
          isSelected
              ? Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: isSelected
                          ? AppColors.primaryColor
                          : AppColors.primaryTextColor),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
