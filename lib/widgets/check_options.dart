import 'package:flutter/material.dart';

class CheakoutOptions extends StatelessWidget {
  final String title;
  final String subTille;
  final Widget? trailingWidget;

  const CheakoutOptions({
    super.key,
    required this.title,
    required this.subTille,
    this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff7C7C7C),
            ),
          ),
          const Spacer(),
          if (trailingWidget != null) ...[
            trailingWidget!,
            const SizedBox(width: 8),
          ] else if (subTille.isNotEmpty) ...[
            Text(
              subTille,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff181725),
              ),
            ),
            const SizedBox(width: 8),
          ],
          const Icon(
            Icons.chevron_right,
            size: 22,
            color: Color(0xff181725),
          ),
        ],
      ),
    );
  }
}