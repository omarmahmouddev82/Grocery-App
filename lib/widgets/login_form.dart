import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Email",
            labelStyle: TextStyle(color: Color(0xFF7C7C7C)),
            floatingLabelStyle: TextStyle(color: Color(0xFF53B175)),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFE2E2E2),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF53B175),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),

        // Password
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            labelStyle: const TextStyle(color: Color(0xFF7C7C7C)),
            floatingLabelStyle: const TextStyle(color: Color(0xFF53B175)),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFE2E2E2),
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF53B175),
              ),
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.visibility_off),
              onPressed: () {},
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot Password?",
            style: TextStyle(
              color: Color(0xFF181725),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}