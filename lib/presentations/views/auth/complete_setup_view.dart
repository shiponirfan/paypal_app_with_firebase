import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal_ui_with_firebase/presentations/views/main_bottom_navbar.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';
import 'package:paypal_ui_with_firebase/widgets/custom_button.dart';
import 'package:paypal_ui_with_firebase/widgets/custom_text_input_field.dart';

class CompleteSetupView extends StatefulWidget {
  const CompleteSetupView({super.key});

  @override
  State<CompleteSetupView> createState() => _CompleteSetupViewState();
}

class _CompleteSetupViewState extends State<CompleteSetupView> {
  final TextEditingController _fullNameTEController = TextEditingController();
  final TextEditingController _numberTEController = TextEditingController();
  final TextEditingController _nidTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Complete Setup',
          style: GoogleFonts.manrope(
              textStyle: const TextStyle(
            fontSize: 16,
          )),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/profile_image.jpeg'),
                                fit: BoxFit.cover),
                            color: AppColors.shadowColor,
                            shape: BoxShape.circle),
                      ),
                      Image.asset(
                        'assets/images/edit_icon.png',
                        fit: BoxFit.contain,
                        width: 25,
                        height: 25,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextInputField(
                    hintText: 'Your Full Name',
                    controller: _fullNameTEController),
                const SizedBox(
                  height: 15,
                ),
                CustomTextInputField(
                  hintText: 'Your Phone Number',
                  controller: _numberTEController,
                  textInputType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextInputField(
                  hintText: 'Your NID Number',
                  controller: _nidTEController,
                  textInputType: TextInputType.number,
                ),
              ],
            ),
            CustomButton(
              title: 'Complete Setup',
              onTap: () {
                Get.to(Get.to(const MainBottomNavbar(),
                    transition: Transition.cupertino,
                    duration: const Duration(seconds: 1)));
              },
            )
          ],
        ),
      ),
    );
  }
}