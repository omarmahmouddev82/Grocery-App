import 'package:flutter/material.dart';
import 'package:grocery_app_task10/screens/beverages_screen.dart';

class ExploreProductsGrid extends StatelessWidget {
  const ExploreProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 0.93,
      children: [
        _buildCategoryCard(
          image: 'assets/image/frash fruits and vegetablse.png',
          name: 'Fresh Fruits & Vegetable',
          color: const Color(0xff53B175).withOpacity(0.15),
          borderColor: const Color(0xff53B175),
        ),
        _buildCategoryCard(
          image: 'assets/image/cooking oil and ghee.png',
          name: 'Cooking Oil & Ghee',
          color: const Color(0xffF8A44C).withOpacity(0.15),
          borderColor: const Color(0xffF8A44C),
        ),
        _buildCategoryCard(
          image: 'assets/image/meat and fish.png',
          name: 'Meat & Fish',
          color: const Color(0xffF7A593).withOpacity(0.15),
          borderColor: const Color(0xffF7A593),
        ),
        _buildCategoryCard(
          image: 'assets/image/bakery and snacks.png',
          name: 'Bakery & Snacks',
          color: const Color(0xffD3B0E0).withOpacity(0.15),
          borderColor: const Color(0xffD3B0E0),
        ),
        _buildCategoryCard(
          image: 'assets/image/dairy and eggs.png',
          name: 'Dairy & Eggs',
          color: const Color(0xffFDE598).withOpacity(0.15),
          borderColor: const Color(0xffFDE598),
        ),
        _buildCategoryCard(
          image: 'assets/image/beverages.png',
          name: 'Beverages',
          color: const Color(0xffB7DFF5).withOpacity(0.15),
          borderColor: const Color(0xffB7DFF5),
          onTap: () {
            Navigator.push (
              context,
              MaterialPageRoute(
                builder: (context) => const BeveragesScreen(),
              )
            );
          },
        ),
        _buildCategoryCard(
          image: 'assets/image/bakery and snacks.png',
          name: 'Bakery & Snacks',
          color: const Color(0xffD3B0E0).withOpacity(0.15),
          borderColor: const Color(0xffD3B0E0),
        ),
        _buildCategoryCard(
          image: 'assets/image/frash fruits and vegetablse.png',
          name: 'Fresh Fruits & Vegetable',
          color: const Color(0xff53B175).withOpacity(0.15),
          borderColor: const Color(0xff53B175),
        ),
      ],
    );
  }

  Widget _buildCategoryCard({
    required String image,
    required String name,
    required Color color,
    required Color borderColor,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: borderColor, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.fastfood, size: 40, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff181725),
              ),
            ),
          ],
        ),
      ),
    );
  }
}