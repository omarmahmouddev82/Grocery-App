import 'package:flutter/material.dart';
import 'package:grocery_app_task10/screens/button_nav_bar_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/dont_have_widget.dart';
import '../widgets/login_header.dart';
import '../widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginHeader(
                  title: "Sign Up",
                  subtitle: "Enter your credentials to continue",
                ),
                const SignUpForm(),
                CustomButton(
                  text: "Sign Up",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ButtonNavBarScreen(),
                      )
                    );
                  },
                ),
                const SizedBox(height: 25),
                DontHaveWidget(
                  questionText: "Already have an account? ",
                  actionText: "Log In",
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}