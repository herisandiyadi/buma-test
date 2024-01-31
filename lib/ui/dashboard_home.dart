import 'package:buma_test/common/style/home_theme.dart';
import 'package:buma_test/ui/leave/leave_page.dart';
import 'package:buma_test/ui/widget/favorite_menu_item.dart';
import 'package:buma_test/ui/widget/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DashboardHomePage extends StatelessWidget {
  static const routeName = 'dashboard-home';
  static const path = '/dashboard-home';
  const DashboardHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            height: 176.h,
            width: 393.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image/header.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.close,
                        color: HomeTheme.whiteColor,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        'Employee Services',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: HomeTheme.whiteColor,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Stack(
                        children: [
                          const Icon(
                            Icons.notifications,
                            color: HomeTheme.whiteColor,
                          ),
                          Positioned(
                            right: 3,
                            top: 2,
                            child: Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                  color: HomeTheme.redColor,
                                  border: Border.all(
                                      width: 1.w, color: HomeTheme.whiteColor),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget unitBD() {
      return Container(
        height: 104.h,
        width: 361.w,
        decoration: BoxDecoration(
          color: HomeTheme.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            width: 1.w,
            color: HomeTheme.brokenWhiteColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Cuti Tahunan',
                    style: darkGreyTextStyle.copyWith(
                        fontSize: 11.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/approval_icon.png',
                        height: 16.h,
                        width: 16.w,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '3 Days',
                        style: blackTextStyle.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Ended on Mar 24, 2024',
                    style: darkGreyTextStyle.copyWith(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const VerticalDivider(
                thickness: 2,
              ),
              Column(
                children: [
                  Text(
                    'Tahun Diperpanjang',
                    style: darkGreyTextStyle.copyWith(
                        fontSize: 11.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/renewal_icon.png',
                        height: 16.h,
                        width: 16.w,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '0 Days',
                        style: blackTextStyle.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Ended on Mar 24, 2024',
                    style: darkGreyTextStyle.copyWith(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget detailMenu() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Transaction',
            style: darkGreyTextStyle.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            width: 1.sw - 32,
            child: Wrap(
              spacing: 4.w,
              runSpacing: 8.h,
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.start,
              children: [
                const MenuItemWidget(
                  title: 'Probation',
                  icon: 'assets/icons/probation_icon.png',
                ),
                MenuItemWidget(
                  title: 'Leave',
                  icon: 'assets/icons/leave_icon.png',
                  onPressed: () {
                    context.goNamed(LeavePage.routeName);
                  },
                ),
                const MenuItemWidget(
                  title: 'Dinas',
                  icon: 'assets/icons/dinas_icon.png',
                ),
                const MenuItemWidget(
                  title: 'Izin',
                  icon: 'assets/icons/izin_icon.png',
                ),
                const MenuItemWidget(
                  title: 'Lembur',
                  icon: 'assets/icons/lembur_icon.png',
                ),
                const MenuItemWidget(
                  title: 'Service Center',
                  icon: 'assets/icons/service_icon.png',
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget bodySection() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          unitBD(),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Favorite',
            style: blackTextStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          FavoriteMenuItem(
            icon: 'assets/icons/leave_icon.png',
            title: 'Leave',
            onPressed: () {
              context.goNamed(LeavePage.routeName);
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          detailMenu(),
        ],
      );
    }

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          header(),
          Positioned(
            top: 120.h,
            child: bodySection(),
          ),
        ],
      ),
    );
  }
}
