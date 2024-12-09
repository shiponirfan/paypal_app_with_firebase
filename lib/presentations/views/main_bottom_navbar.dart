import 'package:flutter/material.dart';
import 'package:paypal_ui_with_firebase/presentations/views/activity_view.dart';
import 'package:paypal_ui_with_firebase/presentations/views/contacts_view.dart';
import 'package:paypal_ui_with_firebase/presentations/views/home_view.dart';
import 'package:paypal_ui_with_firebase/presentations/views/setting_view.dart';
import 'package:paypal_ui_with_firebase/utils/app_colors.dart';
import 'package:paypal_ui_with_firebase/widgets/bottom_navbar_button_widget.dart';

class MainBottomNavbar extends StatefulWidget {
  const MainBottomNavbar({super.key});

  @override
  State<MainBottomNavbar> createState() => _MainBottomNavbarState();
}

class _MainBottomNavbarState extends State<MainBottomNavbar>
    with TickerProviderStateMixin {
  TabController? tabController;
  int selectedTab = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController?.addListener(
      () {
        setState(() {
          selectedTab = tabController?.index ?? 0;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: tabController, children: const [
        HomeView(),
        ContactsView(),
        ActivityView(),
        SettingView(),
      ]),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 65,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 46,
                spreadRadius: -27,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavbarButtonWidget(
                title: 'Home',
                icon: 'assets/images/home-icon.png',
                onTap: () => changeSelectedTab(0),
                isSelected: selectedTab == 0,
              ),
              BottomNavbarButtonWidget(
                title: 'Contacts',
                icon: 'assets/images/user-icon.png',
                onTap: () => changeSelectedTab(1),
                isSelected: selectedTab == 1,
              ),
              BottomNavbarButtonWidget(
                title: 'Activity',
                icon: 'assets/images/wallet-icon.png',
                onTap: () => changeSelectedTab(2),
                isSelected: selectedTab == 2,
              ),
              BottomNavbarButtonWidget(
                title: 'Setting',
                icon: 'assets/images/setting-icon.png',
                onTap: () => changeSelectedTab(3),
                isSelected: selectedTab == 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeSelectedTab(int index) {
    setState(() {
      selectedTab = index;
      tabController?.animateTo(index);
    });
  }
}
