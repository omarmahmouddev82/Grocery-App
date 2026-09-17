import 'package:flutter/material.dart';
import 'package:grocery_app_task10/screens/order_accepted_screen.dart';
import 'package:grocery_app_task10/widgets/check_options.dart';
import 'package:grocery_app_task10/widgets/custom_button.dart';

class CheckBottomSheet extends StatelessWidget {
  const CheckBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Checkout',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close_rounded, color: Color(0xff181725)),
              ),
            ],
          ),

          const Divider(color: Color(0xffE2E2E2), thickness: 1),
          const CheakoutOptions(title: 'Delivery', subTille: 'Select Method'),
          const Divider(color: Color(0xffE2E2E2), thickness: 1),
          
          // Payment Option
          const CheakoutOptions(
            title: 'Payment',
            subTille: '',
            trailingWidget: Icon(
              Icons.credit_card_rounded,
              color: Color(0xff53B175),
              size: 24,
            ),
          ),
          
          const Divider(color: Color(0xffE2E2E2), thickness: 1),
          const CheakoutOptions(title: 'Promo Code', subTille: 'Pick discount'),
          const Divider(color: Color(0xffE2E2E2), thickness: 1),
          const CheakoutOptions(title: 'Total Cost', subTille: '\$13.97'),
          const Divider(color: Color(0xffE2E2E2), thickness: 1),

          const SizedBox(height: 15),

          // Terms & Conditions
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14, color: Color(0xff7C7C7C)),
              children: [
                TextSpan(text: 'By placing an order you agree to our '),
                TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(text: ' And '),
                TextSpan(
                  text: 'Conditions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          CustomButton(
            text: 'Place Order',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderAcceptedScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}