import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobforeveryone/assets/screen/other/welcome.dart';
import 'package:jobforeveryone/utils/constant/appcolors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: AppColor.themecolorwhite),
          ),
          routes: {
            '/': (context) => const WelcomeScreen(),
          }),
    );
  }
}
