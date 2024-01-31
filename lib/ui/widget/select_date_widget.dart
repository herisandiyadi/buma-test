// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:buma_test/common/style/home_theme.dart';

class SelectDateWidget extends StatelessWidget {
  final String title;
  final String validation;
  final bool date;
  final String hints;
  final Function()? onPressed;
  const SelectDateWidget({
    Key? key,
    required this.title,
    required this.validation,
    this.date = true,
    required this.hints,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: blackTextStyle.copyWith(
                  fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 4.w,
            ),
            date
                ? Text(
                    '*',
                    style: redTextStyle.copyWith(
                        fontSize: 12.sp, fontWeight: FontWeight.w500),
                  )
                : SizedBox(),
          ],
        ),
        Container(
          height: 40.h,
          width: 168.w,
          decoration: BoxDecoration(
            color: HomeTheme.whiteColor,
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(
              color: HomeTheme.brokenWhiteColor,
              width: 1.w,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  hints,
                  style: blackTextStyle.copyWith(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                ),
              ),
              date
                  ? GestureDetector(
                      onTap: onPressed,
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: HomeTheme.brokenWhiteColor,
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                            color: HomeTheme.brokenWhiteColor,
                            width: 1.w,
                          ),
                        ),
                        child: Icon(
                          Icons.date_range,
                          size: 20.h,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
        Text(
          validation,
          style: darkGreyTextStyle.copyWith(
              fontSize: 11.sp, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
