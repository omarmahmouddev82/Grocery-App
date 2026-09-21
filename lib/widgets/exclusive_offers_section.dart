import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_task10/screens/product_detail_screen.dart';
import 'package:grocery_app_task10/widgets/product_card.dart';

class ExclusiveOffersSection extends StatelessWidget {
  const ExclusiveOffersSection({super.key});

  final List<ProductModel> exclusiveOffers = const [
    ProductModel(
      title: "Organic Bananas",
      subtitle: "7pcs, Priceg",
      price: "4.99",
      imagePath: "assets/image/organic bananas.png",
    ),
    ProductModel(
      title: "Red Apple",
      subtitle: "1kg, Priceg",
      price: "4.99",
      imagePath: "assets/image/red apple.png",
    ),
    ProductModel(
      title: "Organic Bananas",
      subtitle: "7pcs, Priceg",
      price: "4.99",
      imagePath: "assets/image/organic bananas.png",
    ),
    ProductModel(
      title: "Red Apple",
      subtitle: "1kg, Priceg",
      price: "4.99",
      imagePath: "assets/image/red apple.png",
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
                "Exclusive Offer",
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
          height: 250.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 24.71.w),
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: exclusiveOffers.length,
            separatorBuilder: (context, index) => SizedBox(width: 15.w),
            itemBuilder: (context, index) {
              final item = exclusiveOffers[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(
                        product: item,
                      ),
                    ),
                  );
                },
                child: ProductCard(
                  title: item.title,
                  subtitle: item.subtitle,
                  price: item.price,
                  imagePath: item.imagePath,
                  onAddTap: () {},
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}