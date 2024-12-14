import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paypal_ui_with_firebase/presentations/views/send_money/send_money_amount_view.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';
import 'package:paypal_ui_with_firebase/widgets/appbar_widget.dart';
import 'package:paypal_ui_with_firebase/widgets/custom_button.dart';

class ReceiverEmailView extends StatefulWidget {
  const ReceiverEmailView({super.key});

  @override
  State<ReceiverEmailView> createState() => _ReceiverEmailViewState();
}

class _ReceiverEmailViewState extends State<ReceiverEmailView> {
  final TextEditingController _emailTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: appBarWidget(title: 'Send Money'),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Receiver Email',
              style: textTheme.titleMedium
                  ?.copyWith(color: AppColors.primaryTextColor),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _emailTEController,
              decoration: const InputDecoration(
                hintText: 'Enter receiver email address',
              ),
            ),
            const Spacer(),
            CustomButton(
              title: 'Next',
              onTap: () {
                Get.to(const SendMoneyAmountView(),
                    transition: Transition.cupertino);
              },
            )
          ],
        ),
      ),
    );
  }
}
