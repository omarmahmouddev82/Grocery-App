import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final VoidCallback? onDelete;

  const CartItem({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 65,
          height: 65,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.fastfood, size: 50, color: Colors.grey),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff181725),
                    ),
                  ),
                  GestureDetector(
                    onTap: onDelete,
                    child: const Icon(Icons.close, color: Color(0xff7C7C7C), size: 20),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                quantity,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff7C7C7C),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      _buildCounterBtn(Icons.remove),
                      const SizedBox(width: 12),
                      const Text(
                        '1',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 12),
                      _buildCounterBtn(Icons.add, isAdd: true),
                    ],
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff181725),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCounterBtn(IconData icon, {bool isAdd = false}) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xffE2E2E2)),
      ),
      child: Icon(
        icon,
        size: 18,
        color: isAdd ? const Color(0xff53B175) : const Color(0xffB3B3B3),
      ),
    );
  }
}