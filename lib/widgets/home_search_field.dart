import 'package:flutter/material.dart';
import 'package:grocery_app_task10/screens/egg_screen.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },

      onFieldSubmitted: (value) {
        if (value.trim().toLowerCase() == 'egg') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EggScreen(),
            ),
          );
        }
      },
      decoration: InputDecoration(
        fillColor: const Color(0xffF2F3F2),
        filled: true,
        hintText: "Search Store",
        hintStyle: const TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        prefixIcon: const Icon(
          Icons.search, 
          color: Color(0xff181B19), 
          size: 24,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}