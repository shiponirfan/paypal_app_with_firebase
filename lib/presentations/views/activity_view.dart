import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';
import 'package:paypal_ui_with_firebase/widgets/appbar_widget.dart';

class ActivityView extends StatefulWidget {
  const ActivityView({super.key});

  @override
  State<ActivityView> createState() => _ActivityViewState();
}

class _ActivityViewState extends State<ActivityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        title: 'Activity',
        iconButton: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24),
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
      ),
    );
  }
}
