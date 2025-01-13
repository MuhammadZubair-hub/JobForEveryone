import 'package:flutter/material.dart';
import 'package:jobforeveryone/utils/constant/appcolors.dart';
import 'package:jobforeveryone/utils/constant/appsize.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JobSeeker extends StatefulWidget {
  const JobSeeker({super.key});

  @override
  State<JobSeeker> createState() => _JobSeekerState();
}

class _JobSeekerState extends State<JobSeeker> {
  final controllername = TextEditingController();
  final controllerlastname = TextEditingController();
  var name1 = 'your';
  var lastname1 = 'name';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getvalue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('job seeker'),
        backgroundColor: AppColor.themecolor1,
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.only(
            left: AppSize.paddingsides20, right: AppSize.paddingsides20),
        child: Column(
          children: [
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: '$name1 $lastname1',
              ),
            ),
            SizedBox(height: AppSize.mediumboxheight),
            TextField(
              controller: controllername,
              decoration: InputDecoration(
                  hintText: 'name',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColor.themecolor2))),
            ),
            SizedBox(height: AppSize.mediumboxheight),
            TextField(
              controller: controllerlastname,
              decoration: InputDecoration(
                  hintText: 'lastname',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColor.themecolor2))),
            ),
            SizedBox(height: AppSize.mediumboxheight),
            ElevatedButton(
                onPressed: () async {
                  var pref = await SharedPreferences.getInstance();
                  String name = controllername.text.toString();
                  String lastname = controllerlastname.text.toString();

                  pref.setString('name', name);
                  pref.setString('lastname', lastname);
                  setState(() {
                    name1 = name.isEmpty ? 'your' : name;
                    lastname1 = lastname.isEmpty ? 'name' : lastname;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.themecolor2),
                child: Text(
                  'Save',
                  style: TextStyle(color: AppColor.themecolorwhite),
                ))
          ],
        ),
      )),
    );
  }

  void getvalue() async {
    var pref = await SharedPreferences.getInstance();
    var getname = pref.getString('name') ?? 'your';
    var getlastname = pref.getString('lastname') ?? 'name';

    setState(() {
      name1 = getname;
      lastname1 = getlastname;
    });
  }
}
