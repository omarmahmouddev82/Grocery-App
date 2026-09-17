import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String description;

  const ProductInfo({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const Divider(color: Color(0xFFE2E2E2), height: 1),
          
          // Product Detail
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              title: const Text(
                "Product Detail",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF181725),
                ),
              ),
              // description
              children: [
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF7C7C7C),
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const Divider(color: Color(0xFFE2E2E2), height: 1),
      
          // Nutritions
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              "Nutritions",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF181725),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBEBEB),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "100gr",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF181725)),
              ],
            ),
            onTap: () {},
          ),
          const Divider(color: Color(0xFFE2E2E2), height: 1),
      
          // Review
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              "Review",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF181725),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: List.generate(5,(index) => const Icon(
                    
                      Icons.star,
                      color: Color(0xFFF3603F),
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF181725)),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}