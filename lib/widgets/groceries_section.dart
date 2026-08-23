import 'package:flutter/material.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 24.71),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Groceries",
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
          height: 105,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 24.71),
            child: Row(
              children: [
                Container(
                  width: 248,
                  height: 105,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDEFD9),
                    borderRadius: BorderRadius.circular(18),
                  ),

                  child: Row(
                    children: [
                      Image.asset(
                        "assets/image/pulses.png",
                        width: 70,
                        height: 70,
                      ),

                      SizedBox(width: 15),

                      const Text(
                        "Pulses",
                        style: TextStyle(
                          color: Color(0xff3E423F),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 15),

                Container(
                  width: 248,
                  height: 105,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFE2F6EA),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/image/rice.png",
                        width: 70,
                        height: 70,
                      ),

                      SizedBox(width: 15),

                      const Text(
                        "Rice",
                        style: TextStyle(
                          color: Color(0xff3E423F),
                          fontSize: 20,
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

        SizedBox(height: 20),

        SizedBox(
          height: 250,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24.71),
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: groceries.length,
            separatorBuilder: (context, index) => const SizedBox(width: 15),
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