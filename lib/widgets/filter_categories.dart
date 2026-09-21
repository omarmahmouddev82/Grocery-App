import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterCategories extends StatefulWidget {
  const FilterCategories({super.key});

  @override
  State<FilterCategories> createState() => _FilterCategoriesState();
}

class _FilterCategoriesState extends State<FilterCategories> {
  final Map<String, bool> categories = {
    'Eggs': false,
    'Noodles & Pasta': false,
    'Chips & Crisps': false,
    'Fast Food': false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF181725),
          ),
        ),
        SizedBox(height: 15.h),
        ...categories.keys.map((key) => _buildCheckBoxItem(key)),
      ],
    );
  }

  Widget _buildCheckBoxItem(String title) {
    bool isSelected = categories[title] ?? false;
    return GestureDetector(
      onTap: () {
        setState(() {
          categories[title] = !isSelected;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF53B175) : Colors.transparent,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: isSelected ? const Color(0xFF53B175) : const Color(0xFFB1B1B1),
                  width: 2.w,
                ),
              ),
              child: isSelected
                  ? Icon(Icons.check, size: 16.sp, color: Colors.white)
                  : null,
            ),
            SizedBox(width: 12.w),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                color: isSelected ? const Color(0xFF53B175) : const Color(0xFF181725),
              ),
            ),
          ],
        ),
      ),
    );
  }
}