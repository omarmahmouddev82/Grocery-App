import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/screens/egg_screen.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 16.sp),
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },
      onFieldSubmitted: (value) {
        if (value.trim().toLowerCase() == 'egg') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EggScreen(),
            ),
          );
        }
      },
      decoration: InputDecoration(
        fillColor: const Color(0xffF2F3F2),
        filled: true,
        hintText: "Search Store",
        hintStyle: TextStyle(
          color: const Color(0xff7C7C7C),
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        prefixIcon: Icon(
          Icons.search, 
          color: const Color(0xff181B19), 
          size: 24.sp,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
    );
  }
}