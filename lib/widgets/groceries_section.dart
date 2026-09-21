import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/screens/shop_screen.dart';
import 'package:grocery_app_task10/widgets/product_card.dart';

class GroceriesSection extends StatelessWidget {
  const GroceriesSection({super.key});

  final List<ProductModel> groceries = const [
    ProductModel(
      title: "Beef Bone",
      subtitle: "1kg, Priceg",
      price: "4.99",
      imagePath: "assets/image/beef done.png",
    ),
    ProductModel(
      title: "Broiler Chicken",
      subtitle: "250g, Priceg",
      price: "4.99",
      imagePath: "assets/image/broiler chicken.png",
    ),
    ProductModel(
      title: "Beef Bone",
      subtitle: "1kg, Priceg",
      price: "4.99",
      imagePath: "assets/image/beef done.png",
    ),
    ProductModel(
      title: "Broiler Chicken",
      subtitle: "250g, Priceg",
      price: "4.99",
      imagePath: "assets/image/broiler chicken.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.71.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Groceries",
                style: TextStyle(
                  color: const Color(0xff181725),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: const Color(0xff53B175),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 20.h),

        SizedBox(
          height: 105.h,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 24.71.w),
            child: Row(
              children: [
                Container(
                  width: 248.w,
                  height: 105.h,
                  padding: EdgeInsets.all(16.r),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDEFD9),
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/image/pulses.png",
                        width: 70.w,
                        height: 70.h,
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        "Pulses",
                        style: TextStyle(
                          color: const Color(0xff3E423F),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 15.w),

                Container(
                  width: 248.w,
                  height: 105.h,
                  padding: EdgeInsets.all(16.r),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE2F6EA),
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/image/rice.png",
                        width: 70.w,
                        height: 70.h,
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        "Rice",
                        style: TextStyle(
                          color: const Color(0xff3E423F),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 20.h),

        SizedBox(
          height: 250.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 24.71.w),
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: groceries.length,
            separatorBuilder: (context, index) => SizedBox(width: 15.w),
            itemBuilder: (context, index) {
              final item = groceries[index];

              return ProductCard(
                title: item.title,
                subtitle: item.subtitle,
                price: item.price,
                imagePath: item.imagePath,
                onAddTap: () {},
              );
            },
          ),
        ),
      ],
    );
  }
}