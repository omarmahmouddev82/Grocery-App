import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xff7C7C7C),
            ),
          ),
          const Spacer(),
          if (trailingWidget != null) ...[
            trailingWidget!,
            SizedBox(width: 8.w),
          ] else if (subTille.isNotEmpty) ...[
            Text(
              subTille,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xff181725),
              ),
            ),
            SizedBox(width: 8.w),
          ],
          Icon(
            Icons.chevron_right,
            size: 22.sp,
            color: const Color(0xff181725),
          ),
        ],
      ),
    );
  }
}