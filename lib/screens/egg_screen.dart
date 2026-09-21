import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/screens/filter_screen.dart';
import 'package:grocery_app_task10/widgets/egg_grid.dart';

class EggScreen extends StatelessWidget {
  const EggScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 24.h),
              
              // Search Bar & Filter Row
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F3F2),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: TextField(
                        controller: TextEditingController(text: 'Egg'),
                        style: TextStyle(fontSize: 16.sp),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.black, size: 24.sp),
                          suffixIcon: Icon(Icons.cancel, color: Colors.grey, size: 20.sp),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  IconButton(
                    icon: Icon(Icons.tune, color: Colors.black, size: 24.sp),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FilterScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),

              SizedBox(height: 24.h),

              // Grid Products
              const Expanded(
                child: EggGrid(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}