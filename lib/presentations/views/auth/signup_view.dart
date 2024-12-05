import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal_ui_with_firebase/presentations/views/auth/complete_setup_view.dart';
import 'package:paypal_ui_with_firebase/presentations/views/auth/login_view.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';
import 'package:paypal_ui_with_firebase/widgets/custom_button.dart';
import 'package:paypal_ui_with_firebase/widgets/custom_text_input_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 194,
              fit: BoxFit.fitWidth,
            ),
            Column(
              children: [
                CustomTextInputField(
                    hintText: 'Enter your e-mail',
                    controller: _emailTEController),
                const SizedBox(
                  height: 20,
                ),
                CustomTextInputField(
                  hintText: 'Password',
                  controller: _passwordTEController,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  title: 'Sign Up',
                  onTap: () {
                    Get.to(Get.to(const CompleteSetupView(),
                        transition: Transition.cupertino,
                        duration: const Duration(seconds: 1)));
                  },
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Already have account?',
                  style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                    color: AppColors.subTitle,
                    fontSize: 14,
                  )),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 2,
                  width: 65,
                  color: AppColors.shadowColor.withOpacity(.1),
                ),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () => Get.to(const LoginView(),
                      transition: Transition.cupertino,
                      duration: const Duration(seconds: 1)),
                  splashColor: Colors.transparent,
                  child: Text(
                    'Log In',
                    style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                      color: AppColors.subTitle,
                      fontSize: 14,
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
