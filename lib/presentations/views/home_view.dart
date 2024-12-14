import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal_ui_with_firebase/presentations/views/activity_view.dart';
import 'package:paypal_ui_with_firebase/presentations/views/send_money/receiver_email_view.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';
import 'package:paypal_ui_with_firebase/widgets/send_money_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.38,
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.shadowColor,
                      blurRadius: 48,
                      spreadRadius: -18,
                      offset: const Offset(0, 24))
                ],
                gradient: LinearGradient(
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                    colors: [
                      AppColors.gradientColorOne,
                      AppColors.gradientColorTwo,
                    ])),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/logo_icon.png',
                          width: 56,
                          height: 56,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: AppColors.gradientColorOne, width: 2)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/profile_image.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Hello, Shipon!',
                      style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.5),
                      )),
                    ),
                    const Spacer(),
                    Text(
                      '\$ 272.30',
                      style: GoogleFonts.manrope(
                          textStyle: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      )),
                    ),
                    Text(
                      'Your Balance',
                      style: GoogleFonts.manrope(
                          textStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SendMoneyWidget(
                      icon: 'assets/images/upload-icon.png',
                      title: 'Send\nMoney',
                      onTap: () {
                        Get.to(const ReceiverEmailView(),
                            transition: Transition.cupertino);
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SendMoneyWidget(
                      icon: 'assets/images/download-icon.png',
                      title: 'Add\nMoney',
                      isFilled: false,
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Activity',
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: AppColors.primaryTextColor,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(const ActivityView(),
                            transition: Transition.cupertino);
                      },
                      child: Text(
                        'View all',
                        style: GoogleFonts.manrope(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: AppColors.subTitle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: Column(
                children: [
                  ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.shadowColor,
                                blurRadius: 48,
                                spreadRadius: -27,
                                offset: const Offset(8, 2))
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color:
                                    AppColors.inputBorderColor.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Text(
                                'M',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryTextColor),
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
                                  'Mike Rine',
                                  style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.primaryTextColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  '2 hours ago',
                                  style: GoogleFonts.manrope(
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.subTitle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              '+\$250',
                              style: GoogleFonts.manrope(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 10,
                    shrinkWrap: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
