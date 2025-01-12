import"package:flutter/material.dart";
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
      backgroundColor: AppColor.themecolor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: AppSize.boxheight,),
            Image.asset('assets\image\welcome.png'),
            SizedBox(height: AppSize.mediumboxheight,),

            WelcomeButton(user: 'Job Seeker', title: 'find a perfect job', onPressed: (){}),
            SizedBox(height: AppSize.mediumboxheight,),
            WelcomeButton(user: 'Company', title: 'lets recuirt your great candiate faster here', onPressed: (){}),
            
          ],
        ),
      ),
    );
  }
}