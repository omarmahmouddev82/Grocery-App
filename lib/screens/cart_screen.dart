import 'package:flutter/material.dart';
import '../widgets/cart_item.dart';
import '../widgets/custom_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            const SizedBox(height: 24),
            const Text(
              'My Cart',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff181725),
              ),
            ),
            const SizedBox(height: 24),
            const Divider(color: Color(0xffE2E2E2), height: 4),

            // Cart Items List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                children: [
                  const CartItem(
                    image: 'assets/image/bell pepper red.png',
                    name: 'Bell Pepper Red',
                    quantity: '1kg, Price',
                    price: '\$4.99',
                  ),
                  const Divider(color: Color(0xffE2E2E2), height: 48),
                  const CartItem(
                    image: 'assets/image/egg chicken red.png',
                    name: 'Egg Chicken Red',
                    quantity: '4pcs, Price',
                    price: '\$1.99',
                  ),
                  const Divider(color: Color(0xffE2E2E2), height: 48),
                  const CartItem(
                    image: 'assets/image/organic bananas.png',
                    name: 'Organic Bananas',
                    quantity: '12kg, Price',
                    price: '\$3.00',
                  ),
                  const Divider(color: Color(0xffE2E2E2), height: 48),
                  const CartItem(
                    image: 'assets/image/ginger.png',
                    name: 'Ginger',
                    quantity: '250gm, Price',
                    price: '\$2.99',
                  ),
                ],
              ),
            ),

            // Checkout Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: CustomButton(
                text: 'Go to Checkout',
                onTap: () {
                  // فتح Checkout Sheet
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}