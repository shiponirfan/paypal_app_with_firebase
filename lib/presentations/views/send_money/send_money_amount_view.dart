import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal_ui_with_firebase/presentations/views/send_money/send_money_success_view.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';
import 'package:paypal_ui_with_firebase/widgets/appbar_widget.dart';
import 'package:paypal_ui_with_firebase/widgets/custom_button.dart';

class SendMoneyAmountView extends StatefulWidget {
  const SendMoneyAmountView({super.key});

  @override
  State<SendMoneyAmountView> createState() => _SendMoneyAmountViewState();
}

class _SendMoneyAmountViewState extends State<SendMoneyAmountView> {
  final TextEditingController _amountTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Send Money'),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.subTitle, width: 2)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/profile_image.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'To:',
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: AppColors.subTitle,
                        ),
                      ),
                    ),
                    Text(
                      'Andrew Dillan',
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: AppColors.primaryTextColor,
                        ),
                      ),
                    ),
                    Text(
                      'andrew.dillan@gmail.com',
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: AppColors.subTitle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _amountTEController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixText: '\$ ',
                prefixStyle: TextStyle(color: AppColors.subTitle),
                hintText: 'Enter amount',
              ),
            ),
            const Spacer(),
            CustomButton(
              title: 'Send',
              onTap: () {
                Get.to(const SendMoneySuccessView(),
                    transition: Transition.cupertino);
              },
            )
          ],
        ),
      ),
    );
  }
}
