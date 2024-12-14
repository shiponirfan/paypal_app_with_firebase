import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';
import 'package:paypal_ui_with_firebase/widgets/appbar_widget.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        title: 'Contacts',
        iconButton: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(CupertinoIcons.search, color: AppColors.subTitle,),
                hintText: 'Enter a name or e-mail',
              ),
            ),
            SizedBox(height: 20,),
            ListView.separated(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                          color: AppColors.inputBorderColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          'C',
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
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: 10,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
