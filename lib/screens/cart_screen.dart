import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/widgets/check_bottom_sheet.dart';
import '../widgets/cart_item.dart';
import '../widgets/custom_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            SizedBox(height: 24.h),
            Text(
              'My Cart',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xff181725),
              ),
            ),
            SizedBox(height: 24.h),
            Divider(color: const Color(0xffE2E2E2), height: 4.h),

            // Cart Items List
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                children: [
                  const CartItem(
                    image: 'assets/image/bell pepper red.png',
                    name: 'Bell Pepper Red',
                    quantity: '1kg, Price',
                    price: '\$4.99',
                  ),
                  Divider(color: const Color(0xffE2E2E2), height: 48.h),
                  const CartItem(
                    image: 'assets/image/egg chicken red.png',
                    name: 'Egg Chicken Red',
                    quantity: '4pcs, Price',
                    price: '\$1.99',
                  ),
                  Divider(color: const Color(0xffE2E2E2), height: 48.h),
                  const CartItem(
                    image: 'assets/image/organic bananas.png',
                    name: 'Organic Bananas',
                    quantity: '12kg, Price',
                    price: '\$3.00',
                  ),
                  Divider(color: const Color(0xffE2E2E2), height: 48.h),
                  const CartItem(
                    image: 'assets/image/ginger.png',
                    name: 'Ginger',
                    quantity: '250gm, Price',
                    price: '\$2.99',
                  ),
                ],
              ),
            ),

            // Checkout Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              child: CustomButton(
                text: 'Go to Checkout',
                onTap: () {
                  showModalBottomSheet(
                    context: context, 
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => const CheckBottomSheet(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}