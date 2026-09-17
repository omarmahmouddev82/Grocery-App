import 'package:flutter/material.dart';

class EggGrid extends StatelessWidget {
  const EggGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      childAspectRatio: 0.65,
      physics: const BouncingScrollPhysics(),
      children: [
        _buildProductCard('assets/image/egg chicken red.png', 'Egg Chicken Red', '4pcs, Price', '\$1.99'),
        _buildProductCard('assets/image/egg chicken white.png', 'Egg Chicken White', '180g, Price', '\$1.50'),
        _buildProductCard('assets/image/egg pasta.png', 'Egg Pasta', '30gm, Price', '\$15.99'),
        _buildProductCard('assets/image/egg noodles.png', 'Egg Noodles', '2L, Price', '\$15.99'),
        _buildProductCard('assets/image/mayonnais eggless.png', 'Mayonnais Eggless', '325ml, Price', '\$4.99'),
        _buildProductCard('assets/image/egg noodles2.png', 'Egg Noodles', '330ml, Price', '\$4.99'),
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
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE2E2E2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: imageHeight,
                width: imageWidth,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  cacheWidth: 300,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.fastfood, size: 40, color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            unit,
            style: const TextStyle(color: Colors.grey, fontSize: 13),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
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