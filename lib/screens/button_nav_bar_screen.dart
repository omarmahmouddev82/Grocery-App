import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/screens/account_screen.dart';
import 'package:grocery_app_task10/screens/cart_screen.dart';
import 'package:grocery_app_task10/screens/explore_screen.dart';
import 'package:grocery_app_task10/screens/favotire_screen.dart';
import 'package:grocery_app_task10/screens/shop_screen.dart';

class ButtonNavBarScreen extends StatefulWidget {
  const ButtonNavBarScreen({super.key});

  @override
  State<ButtonNavBarScreen> createState() => _ButtonNavBarScreenState();
}

class _ButtonNavBarScreenState extends State<ButtonNavBarScreen> {
  int cuttentIndex = 0;

  List <Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: screens [cuttentIndex]
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cuttentIndex,
        onTap: (index) {
          setState(() {
            cuttentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff53B175),
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        iconSize: 24.sp,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.storefront, size: 24.sp), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.manage_search, size: 24.sp), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined, size: 24.sp), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline, size: 24.sp), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person_3_outlined, size: 24.sp), label: "Account"),
        ]
      ),
    );
  }
}