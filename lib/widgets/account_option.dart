import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  const AccountOption({super.key, required this.text, required this.icon});

  final IconData icon;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Icon(
                icon , 
                color: Color(0xff181725),
              ),
              SizedBox(width: 8,),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios , size: 17,)
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}