// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:buma_test/common/style/home_theme.dart';
import 'package:buma_test/ui/widget/button_widget.dart';

class AlertWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const AlertWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 272.h,
      width: 297.w,
      decoration: BoxDecoration(
        color: HomeTheme.whiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 100.h,
              width: 100.w,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            ButtonWidget(
                onPressed: () => context.pop(),
                color: HomeTheme.blueColor,
                label: 'Tutup',
                height: 40,
                width: 249,
                textStyle: whiteTextStyle)
          ],
        ),
      ),
    );
  }
}
