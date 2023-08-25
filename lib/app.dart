import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zacrac/routes.dart';

import 'constants.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(392.72727272727275, 834.9090909090909),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Zacrac',
            theme: ThemeData(
              textTheme: GoogleFonts.dmSansTextTheme(),
              appBarTheme: AppBarTheme(
                color: Colors.white,
                elevation: 0,
                centerTitle: true,
                iconTheme: IconThemeData(color: AppColors.neutral, size: 32),
                actionsIconTheme:
                IconThemeData(color: AppColors.neutral, size: 32),
                titleTextStyle: GoogleFonts.dmSans(
                    color: AppColors.neutral,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            initialRoute: Screen.auth.name,
            debugShowCheckedModeBanner: false,
            routes: Screens().routes,
          );
        });
  }
}