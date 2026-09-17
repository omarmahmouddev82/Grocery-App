import 'package:flutter/material.dart';
import 'package:grocery_app_task10/widgets/custom_button.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),

                Padding(
                  padding: const EdgeInsets.only(
                    right: 24,
                  ),
                  child: Image.asset(
                    'assets/image/order accept.png',
                    height: 220,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 40),

                // Title Text
                const Text(
                  'Your Order has been\naccepted',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF181725),
                    height: 1.2,
                  ),
                ),

                const SizedBox(height: 16),

                // Subtitle Text
                const Text(
                  'Your items has been placed and is on\nit\'s way to being processed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF7C7C7C),
                    height: 1.3,
                  ),
                ),

                const Spacer(),

                // Track Order Button
                CustomButton(
                  text: 'Track Order',
                  onTap: () {},
                ),

                const SizedBox(height: 12),

                // Back to home Text Button
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Back to home',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF181725),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}