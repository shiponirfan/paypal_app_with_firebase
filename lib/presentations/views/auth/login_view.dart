import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal_ui_with_firebase/presentations/views/auth/signup_view.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';
import 'package:paypal_ui_with_firebase/widgets/custom_button.dart';
import 'package:paypal_ui_with_firebase/widgets/custom_text_input_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
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
                  title: 'Log in',
                  onTap: () {},
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Having trouble logging in?',
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
                  onTap: () => Get.to(const SignUpView()),
                  splashColor: Colors.transparent,
                  child: Text(
                    'Sign up',
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
