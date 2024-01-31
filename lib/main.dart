import 'package:buma_test/common/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final route = AppRouter.routeNavigation();

    return ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Buma Test',
            routerDelegate: route.routerDelegate,
            routeInformationProvider: route.routeInformationProvider,
            routeInformationParser: route.routeInformationParser,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
          );
        });
  }
}
