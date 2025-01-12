import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jobforeveryone/utils/constant/appcolors.dart';
import 'package:jobforeveryone/utils/constant/appsize.dart';

class WelcomeButton extends StatefulWidget {
   WelcomeButton({super.key, required this.user, required this.title ,required this.onPressed});

  final String user;
  final String title;
  VoidCallback onPressed;

  @override
  State<WelcomeButton> createState() => _WelcomeButtonState();
}

class _WelcomeButtonState extends State<WelcomeButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Row(
        children: [
          Image.asset('',color: AppColor.themecolorblack,),
          SizedBox(width: AppSize.smallboxwidth,),
          Column(
            children: [
              Padding(padding: EdgeInsets.only(left: AppSize.smallpaddingsides, bottom: AppSize.smallpaddingupdown), child:  Text(widget.user,style: TextStyle(color: AppColor.themecolor2),)),
              Padding(padding: EdgeInsets.only(left: AppSize.smallpaddingsides, bottom: AppSize.smallpaddingupdown),child: Text(widget.title,style: TextStyle(color: AppColor.themecolorblack),)),
            ],
          )
        ],
      ),
    );
  }
}