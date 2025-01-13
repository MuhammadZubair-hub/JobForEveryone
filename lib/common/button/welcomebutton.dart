import 'package:flutter/material.dart';
import 'package:jobforeveryone/utils/constant/appcolors.dart';
import 'package:jobforeveryone/utils/constant/appsize.dart';

class WelcomeButton extends StatefulWidget {
  const WelcomeButton(
      {super.key,
      required this.user,
      required this.title,
      required this.imageUrl,
      required this.onPressed});

  final String user;
  final String title;
  final String imageUrl;
  final VoidCallback onPressed;

  @override
  State<WelcomeButton> createState() => _WelcomeButtonState();
}

class _WelcomeButtonState extends State<WelcomeButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: AppSize.paddingsides20, right: AppSize.paddingupdown20),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.themecolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.circleavater10)),
            elevation: 10,
            fixedSize: Size(double.maxFinite, AppSize.welcomebuttonhieght)),
        child: Row(
          children: [
            CircleAvatar(
                radius: AppSize.circleavater40,
                child: Image.asset(widget.imageUrl)),
            SizedBox(
              width: AppSize.smallboxwidth,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding:
                        EdgeInsets.only(bottom: AppSize.smallpaddingupdown),
                    child: Text(
                      widget.user,
                      style: TextStyle(
                          color: AppColor.themecolor2,
                          fontSize: AppSize.fontSize20),
                    )),
                Padding(
                    padding:
                        EdgeInsets.only(bottom: AppSize.smallpaddingupdown),
                    child: Text(
                      textAlign: TextAlign.center,
                      widget.title,
                      style: TextStyle(
                          color: AppColor.themecolorblack,
                          fontSize: AppSize.fontSize15),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
