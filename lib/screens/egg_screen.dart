import 'package:flutter/material.dart';
import 'package:grocery_app_task10/screens/filter_screen.dart';
import 'package:grocery_app_task10/widgets/egg_grid.dart';

class EggScreen extends StatelessWidget {
  const EggScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 24),
              
              // Search Bar & Filter Row
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F3F2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: TextEditingController(text: 'Egg'),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.black),
                          suffixIcon: Icon(Icons.cancel, color: Colors.grey, size: 20),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                    icon: const Icon(Icons.tune, color: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FilterScreen(),
                        )
                      );
                    },
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Grid Products
              const Expanded(
                child: EggGrid(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}