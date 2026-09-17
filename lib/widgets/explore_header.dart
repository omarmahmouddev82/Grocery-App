import 'package:flutter/material.dart';
import 'home_search_field.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 15),
        Text(
          'Find Products',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff181725),
          ),
        ),
        SizedBox(height: 20),
        HomeSearchField(),
        SizedBox(height: 20),
      ],
    );
  }
}