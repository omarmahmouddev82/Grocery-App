import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/widgets/account_info.dart';
import 'package:grocery_app_task10/widgets/account_option.dart';
import 'package:grocery_app_task10/widgets/custom_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          children: [
            const AccountInfo(),
            SizedBox(height: 24.h),
            const Divider(),
            const AccountOption(icon: Icons.shopping_bag_outlined, text: "Orders"),
            const AccountOption(icon: Icons.badge_outlined, text: "My Details"),
            const AccountOption(icon: Icons.location_on_outlined, text: "Delivery Address"),
            const AccountOption(icon: Icons.credit_card_outlined, text: "Payment Methods"),
            const AccountOption(icon: Icons.local_offer_outlined, text: "Promo Card"),
            const AccountOption(icon: Icons.notifications_none_outlined, text: "Notifications"),
            const AccountOption(icon: Icons.help_outline, text: "Help"),
            const AccountOption(icon: Icons.info_outline, text: "About"),
            SizedBox(height: 16.h),

            CustomButton(
              text: "Log Out",
              backgroundColor: const Color(0xffF2F3F2),
              textColor: const Color(0xff53B175),
              prefixWidget: Icon(
                Icons.logout,
                color: const Color(0xff53B175),
                size: 20.sp,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}