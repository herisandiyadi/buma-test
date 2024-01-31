import 'package:buma_test/common/style/home_theme.dart';
import 'package:buma_test/common/utils/text_utils.dart';
import 'package:buma_test/ui/widget/alert_widget.dart';
import 'package:buma_test/ui/widget/button_widget.dart';
import 'package:buma_test/ui/widget/custom_switch.dart';
import 'package:buma_test/ui/widget/select_date_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LeaveHOPage extends StatefulWidget {
  static const routeName = 'leave-ho';
  static const path = 'leave-ho';
  const LeaveHOPage({super.key});

  @override
  State<LeaveHOPage> createState() => _LeaveHOPageState();
}

class _LeaveHOPageState extends State<LeaveHOPage> {
  List categoryList = ['Cuti Besar', 'Cuti Tahunan'];
  String? typeCuti;
  bool valueToggle = false;
  DateTime? beginDate;
  DateTime? endDate;

  void selectedBeginDate() async {
    final result = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2045));

    setState(() {
      beginDate = result;
    });
  }

  void selectedEndDate() async {
    final result = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2045));

    setState(() {
      endDate = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget tipeCuti() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Tipe Cuti',
                  style: blackTextStyle.copyWith(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  '*',
                  style: redTextStyle.copyWith(
                      fontSize: 12.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: HomeTheme.whiteColor,
                border: Border.all(color: HomeTheme.brokenWhiteColor),
                borderRadius: BorderRadius.circular(6),
              ),
              child: DropdownButtonFormField(
                elevation: 0,
                dropdownColor: HomeTheme.greyColor,
                value: typeCuti,
                isExpanded: true,
                decoration: const InputDecoration(border: InputBorder.none),
                icon: const Icon(Icons.expand_more),
                hint: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Pilih tipe cuti',
                    style: blackTextStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    typeCuti = value as String;
                  });
                },
                onSaved: (value) {},
                items: categoryList.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        e,
                        style: blackTextStyle.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
    }

    Widget cutiInfo() {
      return Row(
        children: [
          SvgPicture.asset('assets/icons/suitcase_icon.svg'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cuti',
                style: darkGreyTextStyle.copyWith(
                    fontSize: 11.sp, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    'Pekerja Cuti pada tanggal',
                    style: darkGreyTextStyle.copyWith(
                        fontSize: 11.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    '23 Sep - 6 Oct 2023',
                    style: blackTextStyle.copyWith(
                        fontSize: 12.sp, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          )
        ],
      );
    }

    Widget toggle(String title, String validation) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
                fontSize: 12.sp, fontWeight: FontWeight.w500),
          ),
          CustomSwitch(
              value: valueToggle,
              onChanged: (value) {
                setState(() {
                  valueToggle = value;
                });
              }),
          Text(
            validation,
            style: darkGreyTextStyle.copyWith(
                fontSize: 11.sp, fontWeight: FontWeight.w500),
          ),
        ],
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
          'Aktifitas Cuti',
          style: blackTextStyle.copyWith(
              fontSize: 16.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 32.h,
                width: 361.w,
                decoration: BoxDecoration(
                  color: HomeTheme.greyColor,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Silahkan pilih tipe cuti yang ingin kamu ajukan',
                    style: darkGreyTextStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              tipeCuti(),
              Divider(
                thickness: 1.h,
                color: HomeTheme.brokenWhiteColor,
              ),
              cutiInfo(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  height: 50.h,
                  width: 361.w,
                  decoration: BoxDecoration(
                    color: HomeTheme.greyColor,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Untuk mengajukan cuti kamu perlu melengkapi data dibawah ini',
                      style: darkGreyTextStyle.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Tanggal Cuti',
                textAlign: TextAlign.left,
                style: blackTextStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 24.w,
                mainAxisSpacing: 24.h,
                childAspectRatio: 2,
                shrinkWrap: true,
                children: [
                  SelectDateWidget(
                    onPressed: () => selectedBeginDate(),
                    title: 'Tanggal Mulai',
                    validation: 'Pilih tanggal mulai cuti',
                    hints: TextUtils().dateFormatId(beginDate),
                  ),
                  toggle('Cuti Beberapa Hari', 'Untuk cuti lebih dari 1 hari'),
                  SelectDateWidget(
                    onPressed: valueToggle ? () => selectedEndDate() : null,
                    title: 'Tanggal Selesai',
                    validation: 'Pilih tanggal selesai cuti',
                    hints: TextUtils().dateFormatId(endDate),
                  ),
                  SelectDateWidget(
                    date: false,
                    title: 'Lama Cuti',
                    validation: 'Jumlah lama kamu cuti',
                    hints: beginDate != null && endDate != null
                        ? '${TextUtils().countDay(beginDate!, endDate!)} hari'
                        : !valueToggle && beginDate != null
                            ? '1 hari'
                            : '-',
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 50.h,
                width: 361.w,
                decoration: BoxDecoration(
                  color: HomeTheme.softBlueColor,
                  borderRadius: BorderRadius.circular(
                    5.r,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info,
                        color: HomeTheme.blueColor,
                        size: 16.h,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Expanded(
                        child: Text(
                          'Jika Cuti Tahunan di update maka cuti lain akan terhapus',
                          style: blueTextStyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 72.h,
        width: 393.w,
        decoration: BoxDecoration(
          color: HomeTheme.whiteColor,
          border: Border.all(
            width: 1.w,
            color: HomeTheme.brokenWhiteColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(
                onPressed: () => context.pop(),
                label: 'Batal',
                height: 40,
                width: 172,
                color: HomeTheme.brokenWhiteColor,
                textStyle: blackTextStyle,
              ),
              ButtonWidget(
                onPressed: () => _showBottomSheet(context),
                icon: Icons.add,
                label: 'Tambahkan',
                height: 40,
                width: 172,
                textStyle: whiteTextStyle,
                color: HomeTheme.blueColor,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (BuildContext builderContext) {
        return Container(
          height: 281.h,
          width: 393.w,
          decoration: const BoxDecoration(
            color: HomeTheme.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.h,
              ),
              Center(
                child: Container(
                  width: 24.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                      color: HomeTheme.darkGreyColor,
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Tambah Aktivitas Cuti',
                        style: blackTextStyle.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tipe Cuti',
                          style: blackTextStyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Cuti Besar',
                          style: blackTextStyle.copyWith(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Durasi',
                          style: blackTextStyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '3 Hari',
                          style: blackTextStyle.copyWith(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Divider(
                        thickness: 1.h,
                        color: HomeTheme.brokenWhiteColor,
                      ),
                    ),
                    Text(
                      'Apakah kamu yakin ingin menambahkan ativitas cuti ini?',
                      style: blackTextStyle.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonWidget(
                              onPressed: () {
                                context.pop();
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext builderContext) {
                                    return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        content: const AlertWidget(
                                            image: 'assets/image/cancel.png',
                                            description:
                                                'Aktivitas cuti kamu batal ditambahkan',
                                            title: 'Oops!'));
                                  },
                                );
                              },
                              label: 'Batal',
                              color: HomeTheme.brokenWhiteColor,
                              height: 40,
                              width: 172,
                              textStyle: blackTextStyle),
                          ButtonWidget(
                              onPressed: () {
                                context.pop();
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext builderContext) {
                                    return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        content: const AlertWidget(
                                            image: 'assets/image/success.png',
                                            description:
                                                'Aktivitas cuti kamu berhasil ditambahkan',
                                            title: 'Woohoo!'));
                                  },
                                );
                              },
                              icon: Icons.add,
                              label: 'Tambahkan',
                              color: HomeTheme.blueColor,
                              height: 40,
                              width: 172,
                              textStyle: whiteTextStyle),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
