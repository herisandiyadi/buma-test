// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:buma_test/common/style/home_theme.dart';

class FavoriteMenuItem extends StatelessWidget {
  final Function()? onPressed;
  final String icon;
  final String title;
  const FavoriteMenuItem({
    Key? key,
    this.onPressed,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 56.h,
        width: 164.w,
        decoration: BoxDecoration(
          color: HomeTheme.whiteColor,
          borderRadius: BorderRadius.circular(
            10.r,
          ),
          border: Border.all(
            width: 1.w,
            color: HomeTheme.brokenWhiteColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset(
                icon,
                height: 24.h,
                width: 24.w,
              ),
              SizedBox(
                width: 16.w,
              ),
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
