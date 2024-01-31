import 'package:buma_test/common/style/home_theme.dart';
import 'package:buma_test/ui/leave/leave_ho_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LeavePage extends StatelessWidget {
  static const routeName = 'leave';
  static const path = 'leave';
  const LeavePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Text(
            'Information Leave',
            style: blackTextStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            'Please check detail your information leave ',
            style: darkGreyTextStyle.copyWith(
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 68.h,
            width: 361.w,
            decoration: BoxDecoration(
              color: HomeTheme.greyColor,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Berikut informasi terkait cuti yang dapat dilakukan sebelum membuat request cuti, pilih "create form leave" untuk membuat pengajuan cuti',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget itemSmall(String event, String date) {
      return Container(
        height: 88.h,
        width: 172.5.w,
        decoration: BoxDecoration(
          color: HomeTheme.softBlueColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: 1.w, color: HomeTheme.blueColor),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              'assets/image/contour.svg',
              fit: BoxFit.cover,
              color: HomeTheme.blueColor.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    event,
                    style: blackTextStyle.copyWith(
                        fontSize: 11.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    date,
                    style: blackTextStyle.copyWith(
                        fontSize: 16.sp, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget itemCutiInfo() {
      return Container(
        height: 108.h,
        width: 172.w,
        decoration: BoxDecoration(
          color: HomeTheme.softGreenColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: 1.w, color: HomeTheme.greenColor),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              'assets/image/contour.svg',
              fit: BoxFit.cover,
              color: HomeTheme.orangeGradient1.withOpacity(0.3),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/icons/calendar.svg'),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Cuti Besar',
                        style: blackTextStyle.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Mulai',
                        style: darkGreyTextStyle.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '24 Mar 2024',
                        style: blackTextStyle.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Berakhir',
                        style: darkGreyTextStyle.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '-',
                        style: blackTextStyle.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget itemCuti() {
      return Container(
        width: 172.w,
        height: 236.h,
        decoration: BoxDecoration(
          color: HomeTheme.greenColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: 1.w, color: HomeTheme.blueColor),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset('assets/image/contour.svg',
                fit: BoxFit.cover, color: HomeTheme.orangeGradient1),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 180.h,
                  width: 140.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cuti',
                        style: whiteTextStyle.copyWith(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: HomeTheme.whiteColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: SvgPicture.asset(
                            'assets/icons/calendar_cuti.svg',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        'Mulai dari',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '24 Mar 2024',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Berakhir',
                      style: whiteTextStyle.copyWith(
                          fontSize: 11.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      '25 Mar 2024',
                      style: whiteTextStyle.copyWith(
                          fontSize: 11.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget itemCutiTahunan() {
      return Container(
        width: 172.w,
        height: 216.h,
        decoration: BoxDecoration(
          color: HomeTheme.blueColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: 1.w, color: HomeTheme.darkBlueColor),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset('assets/image/contour.svg',
                fit: BoxFit.cover,
                color: HomeTheme.softBlueColor.withOpacity(0.3)),
            Column(
              children: [
                SizedBox(
                  height: 180.h,
                  width: 140.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cuti Tahunan',
                        style: whiteTextStyle.copyWith(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: HomeTheme.whiteColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: SvgPicture.asset(
                            'assets/icons/cuti_tahunan.svg',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        '3 Hari',
                        style: whiteTextStyle.copyWith(
                            fontSize: 24.sp, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Berakhir',
                      style: whiteTextStyle.copyWith(
                          fontSize: 11.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      '24 Mar 2024',
                      style: whiteTextStyle.copyWith(
                          fontSize: 11.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget izinCard() {
      return Container(
        height: 95.h,
        width: 361.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: 1.w, color: HomeTheme.brokenWhiteColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: SvgPicture.asset(
                      'assets/icons/calendar.svg',
                      height: 32.h,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Izin',
                    style: blackTextStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                '-',
                style: blackTextStyle.copyWith(
                    fontSize: 12.sp, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: HomeTheme.whiteColor,
      appBar: AppBar(
        backgroundColor: HomeTheme.whiteColor,
        elevation: 1,
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: const Icon(
            Icons.arrow_back,
            color: HomeTheme.blackColor,
          ),
        ),
        title: Text(
          'Leave',
          style: blackTextStyle.copyWith(
              fontSize: 16.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                header(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h,
                    children: [
                      itemCuti(),
                      itemCutiInfo(),
                      itemCutiTahunan(),
                      itemSmall('Cuti Besar', '24-25 Mar 2024'),
                      itemSmall('Perpanjangan Cuti Tahunan', '24 Mar 2024'),
                      itemSmall('Cuti Bersama Keluarga', '24 Mar 2024'),
                    ],
                  ),
                ),
                izinCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 72.h,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.w,
            color: HomeTheme.brokenWhiteColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 40.h,
            width: 361.w,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(HomeTheme.blueColor)),
              onPressed: () {
                context.goNamed(LeaveHOPage.routeName);
              },
              child: Text(
                'Buat Form Leave',
                style: whiteTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
