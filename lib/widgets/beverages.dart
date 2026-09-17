import 'package:flutter/material.dart';

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      childAspectRatio: 0.65,
      children: [
        _buildProductCard('assets/image/diet coke.png', 'Diet Coke', '355ml', '\$1.99', imageHeight: 100, imageWidth: 100),
        _buildProductCard('assets/image/sprite can.png', 'Sprite Can', '325ml', '\$1.50', imageHeight: 100, imageWidth: 100),
        _buildProductCard('assets/image/apple and grape juice.png', 'Apple & Grape Juice', '325ml', '\$1.50', imageHeight: 95, imageWidth: 95),
        _buildProductCard('assets/image/orenge juice.png', 'Orenge Juice', '2L', '\$15.99', imageHeight: 95, imageWidth: 95),
        _buildProductCard('assets/image/coca cola can.png', 'Coca Cola Can', '325ml', '\$4.99', imageHeight: 100, imageWidth: 100),
        _buildProductCard('assets/image/pepsi can.png', 'Pepsi Can', '330ml', '\$4.99', imageHeight: 100, imageWidth: 100),
      ],
    );
  }

  Widget _buildProductCard(
    String image,
    String name,
    String unit,
    String price, {
    double imageHeight = 90,
    double imageWidth = 90,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE2E2E2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // iamge item
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: imageHeight,
                width: imageWidth,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),

          // name product
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),

          Text(
            unit,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(height: 6),

          // price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              // button plus
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFF53B175),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 22),
              ),
            ],
          ),
        ],
      ),
    );
  }
}