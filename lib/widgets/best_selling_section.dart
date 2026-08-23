import 'package:flutter/material.dart';
import 'package:grocery_app_task10/screens/shop_screen.dart';
import 'package:grocery_app_task10/widgets/product_card.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({super.key});

  final List<ProductModel> bestSellingOffers = const [
    ProductModel(
      title: "Bell Pepper Red",
      subtitle: "1kg, Priceg",
      price: "4.99",
      imagePath: "assets/image/bell pepper red.png",
    ),
    ProductModel(
      title: "Ginger",
      subtitle: "250g, Priceg",
      price: "4.99",
      imagePath: "assets/image/ginger.png",
    ),
    ProductModel(
      title: "Bell Pepper Red",
      subtitle: "1kg, Priceg",
      price: "4.99",
      imagePath: "assets/image/bell pepper red.png",
    ),
    ProductModel(
      title: "Ginger",
      subtitle: "250g, Priceg",
      price: "4.99",
      imagePath: "assets/image/ginger.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.71),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Selling",
                style: TextStyle(
                  color: Color(0xff181725),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Color(0xff53B175),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 20),

        SizedBox(
          height: 250,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 24.71),
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: bestSellingOffers.length,
            separatorBuilder: (context, index) => SizedBox(width: 15),
            itemBuilder: (context, index) {
              final item = bestSellingOffers[index];

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