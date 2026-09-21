import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterBrands extends StatefulWidget {
  const FilterBrands({super.key});

  @override
  State<FilterBrands> createState() => _FilterBrandsState();
}

class _FilterBrandsState extends State<FilterBrands> {
  final Map<String, bool> brands = {
    'Individual Collection': false,
    'Cocola': false,
    'Ifad': false,
    'Kazi Farmas': false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Brand',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF181725),
          ),
        ),
        SizedBox(height: 16.h),
        ...brands.keys.map((key) => _buildCheckBoxItem(key)),
      ],
    );
  }

  Widget _buildCheckBoxItem(String title) {
    bool isSelected = brands[title] ?? false;
    return GestureDetector(
      onTap: () {
        setState(() {
          brands[title] = !isSelected;
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