import 'package:flutter/material.dart';
import 'package:grocery_app_task10/widgets/custom_button.dart';

class OrderFailedDialog extends StatelessWidget {
  const OrderFailedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      backgroundColor: Colors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Close Button
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.close_rounded,
                  color: Color(0xFF181725),
                  size: 24,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Image Illustration
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Image.asset(
                'assets/image/oops! order failed.png',
                height: 180,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 25),

            // Title
            const Text(
              'Oops! Order Failed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF181725),
              ),
            ),

            const SizedBox(height: 12),

            // Subtitle
            const Text(
              'Something went terribly wrong.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF7C7C7C),
              ),
            ),

            const SizedBox(height: 30),

            // Please Try Again Button
            CustomButton(
              text: 'Please Try Again',
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const SizedBox(height: 8),

            // Back to home Button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back to home',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF181725),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}