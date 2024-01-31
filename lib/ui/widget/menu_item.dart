// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:buma_test/common/style/home_theme.dart';

class MenuItemWidget extends StatelessWidget {
  final Function()? onPressed;
  final String icon;
  final String title;
  const MenuItemWidget({
    Key? key,
    this.onPressed,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 84.w,
        height: 60.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              title,
              style: darkGreyTextStyle.copyWith(
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
