import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/widgets/order_failed_dialog.dart';
import '../widgets/custom_button.dart';
import '../widgets/favorite_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

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
              'Favorurite',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xff181725),
              ),
            ),
            SizedBox(height: 18.h),
            Divider(color: const Color(0xffE2E2E2), height: 4.h),

            // Favorites List
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                children: [
                  const FavoriteItem(
                    image: 'assets/image/sprite can.png',
                    name: 'Sprite Can',
                    quantity: '325ml, Price',
                    price: '\$1.50',
                  ),
                  Divider(color: const Color(0xffE2E2E2), height: 56.h),
                  const FavoriteItem(
                    image: 'assets/image/diet coke.png',
                    name: 'Diet Coke',
                    quantity: '355ml, Price',
                    price: '\$1.99',
                  ),
                  Divider(color: const Color(0xffE2E2E2), height: 56.h),
                  const FavoriteItem(
                    image: 'assets/image/apple and grape juice.png',
                    name: 'Apple & Grape Juice',
                    quantity: '2L, Price',
                    price: '\$15.50',
                  ),
                  Divider(color: const Color(0xffE2E2E2), height: 56.h),
                  const FavoriteItem(
                    image: 'assets/image/coca cola can.png',
                    name: 'Coca Cola Can',
                    quantity: '325ml, Price',
                    price: '\$4.99',
                  ),
                  Divider(color: const Color(0xffE2E2E2), height: 56.h),
                  const FavoriteItem(
                    image: 'assets/image/pepsi can.png',
                    name: 'Pepsi Can',
                    quantity: '330ml, Price',
                    price: '\$4.99',
                  ),
                ],
              ),
            ),

            // Bottom Add All To Cart Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
              child: CustomButton(
                text: 'Add All To Cart',
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) => const OrderFailedDialog(),
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