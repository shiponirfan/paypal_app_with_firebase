import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paypal_ui_with_firebase/presentations/views/main_bottom_navbar.dart';
import 'package:paypal_ui_with_firebase/widgets/custom_button.dart';

class SendMoneySuccessView extends StatefulWidget {
  const SendMoneySuccessView({super.key});

  @override
  State<SendMoneySuccessView> createState() => _SendMoneySuccessViewState();
}

class _SendMoneySuccessViewState extends State<SendMoneySuccessView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/success-icon.png',
                width: 90,
                fit: BoxFit.fitWidth,
              ),
              const Text(
                'Success!',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '\$150.00 USD',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'has been sent to friend@email.com from your wallet.',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                title: 'Done',
                onTap: () {
                  Get.to(const MainBottomNavbar(),
                      transition: Transition.cupertino);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
