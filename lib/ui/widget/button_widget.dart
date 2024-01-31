// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:buma_test/common/style/home_theme.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final double height;
  final double width;
  final Color? color;
  final TextStyle textStyle;
  final IconData? icon;
  final Function()? onPressed;

  const ButtonWidget({
    Key? key,
    required this.label,
    required this.height,
    required this.width,
    this.color,
    required this.textStyle,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null
                ? Row(
                    children: [
                      Icon(
                        icon,
                        size: 16.h,
                        color: HomeTheme.whiteColor,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                    ],
                  )
                : const SizedBox(),
            Text(
              label,
              style: textStyle.copyWith(
                  fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
