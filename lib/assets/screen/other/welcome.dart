import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:jobforeveryone/common/button/welcomebutton.dart";
import "package:jobforeveryone/utils/constant/appcolors.dart";
import "package:jobforeveryone/utils/constant/appsize.dart";

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.themecolor1,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: AppSize.boxheight,
            ),
            Container(
                width: 300.w,
                height: 350.h,
                decoration: BoxDecoration(),
                child: Image.asset('lib/assets/image/welcome.png')),
            SizedBox(
              height: AppSize.mediumboxheight,
            ),
            WelcomeButton(
                user: 'Job Seeker',
                title: 'Find a perfect job here',
                imageUrl: 'lib/assets/image/job-seeker.png',
                onPressed: () {}),
            SizedBox(
              height: AppSize.mediumboxheight,
            ),
            WelcomeButton(
                user: 'Company',
                title: 'Finds best recuirt here',
                imageUrl: 'lib/assets/image/comapny.png',
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
