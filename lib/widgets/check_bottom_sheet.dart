import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/screens/order_accepted_screen.dart';
import 'package:grocery_app_task10/widgets/check_options.dart';
import 'package:grocery_app_task10/widgets/custom_button.dart';

class CheckBottomSheet extends StatelessWidget {
  const CheckBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
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
              Text(
                'Checkout',
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.close_rounded, color: const Color(0xff181725), size: 24.sp),
              ),
            ],
          ),

          const Divider(color: Color(0xffE2E2E2), thickness: 1),
          const CheakoutOptions(title: 'Delivery', subTille: 'Select Method'),
          const Divider(color: Color(0xffE2E2E2), thickness: 1),
          
          // Payment Option
          CheakoutOptions(
            title: 'Payment',
            subTille: '',
            trailingWidget: Icon(
              Icons.credit_card_rounded,
              color: const Color(0xff53B175),
              size: 24.sp,
            ),
          ),
          
          const Divider(color: Color(0xffE2E2E2), thickness: 1),
          const CheakoutOptions(title: 'Promo Code', subTille: 'Pick discount'),
          const Divider(color: Color(0xffE2E2E2), thickness: 1),
          const CheakoutOptions(title: 'Total Cost', subTille: '\$13.97'),
          const Divider(color: Color(0xffE2E2E2), thickness: 1),

          SizedBox(height: 15.h),

          // Terms & Conditions
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 14.sp, color: const Color(0xff7C7C7C)),
              children: const [
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

          SizedBox(height: 20.h),

          CustomButton(
            text: 'Place Order',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderAcceptedScreen(),
                ),
              );
            },
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}