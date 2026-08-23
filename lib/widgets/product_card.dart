import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String imagePath;
  final VoidCallback? onAddTap;

  const ProductCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
    this.onAddTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE2E2E2)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              imagePath,
              height: 80,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 12),

          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF181725),
            ),
          ),

          SizedBox(height: 4),

          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF7C7C7C),
            ),
          ),

          Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$$price",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF181725),
                ),
              ),
              
              InkWell(
                onTap: onAddTap,
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF53B175),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Icon(Icons.add, 
                    color: Colors.white, size: 28 
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}