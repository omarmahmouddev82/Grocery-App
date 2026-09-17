import 'package:flutter/material.dart';

class FilterBrands extends StatefulWidget {
  const FilterBrands({super.key});

  @override
  State<FilterBrands> createState() => _FilterBrandsState();
}

class _FilterBrandsState extends State<FilterBrands> {
  final Map<String, bool> brands = {
    'Individual Collection': false,
    'Cocola': false,
    'Ifad': false,
    'Kazi Farmas': false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Brand',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF181725),
          ),
        ),
        const SizedBox(height: 16),
        ...brands.keys.map((key) => _buildCheckBoxItem(key)),
      ],
    );
  }

  Widget _buildCheckBoxItem(String title) {
    bool isSelected = brands[title] ?? false;
    return GestureDetector(
      onTap: () {
        setState(() {
          brands[title] = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF53B175) : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected ? const Color(0xFF53B175) : const Color(0xFFB1B1B1),
                  width: 2,
                ),
              ),
              child: isSelected
                  ? const Icon(Icons.check, size: 16, color: Colors.white)
                  : null,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                color: isSelected ? const Color(0xFF53B175) : const Color(0xFF181725),
              ),
            ),
          ],
        ),
      ),
    );
  }
}