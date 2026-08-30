import 'package:flutter/material.dart';
import 'package:grocery_app_task10/widgets/account_info.dart';
import 'package:grocery_app_task10/widgets/account_option.dart';
import 'package:grocery_app_task10/widgets/custom_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 24),
      child: Column(
        children: [
          AccountInfo(),
          SizedBox(height: 24,),
          Divider(),
          AccountOption(icon: Icons.shopping_bag_outlined, text: "Orders",),
          AccountOption(icon: Icons.badge_outlined, text: "My Details",),
          AccountOption(icon: Icons.location_on_outlined, text: "Delivery Address",),
          AccountOption(icon: Icons.credit_card_outlined, text: "Payment Methods",),
          AccountOption(icon: Icons.local_offer_outlined, text: "Promo Cord",),
          AccountOption(icon: Icons.notifications_none_outlined, text: "Notifecations",),
          AccountOption(icon: Icons.help_outline, text: "Help",),
          AccountOption(icon: Icons.info_outline, text: "About",),
          SizedBox(height: 16,),

          CustomButton(
            text: "Log Out",
            backgroundColor: const Color(0xffF2F3F2),
            textColor: const Color(0xff53B175),
            prefixWidget: const Icon(
              Icons.logout,
              color: Color(0xff53B175),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}