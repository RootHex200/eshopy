import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/options_list/options_list.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/user_account/data/data_sources/user_account_option_data.dart';
import 'package:eshopy/src/feature/user_account/presentation/pages/account_option_pages/edit_profile_page.dart';
import 'package:flutter/material.dart';

class Useraccountpage extends StatelessWidget {
  const Useraccountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Account Page',
          style: TextStyle(
              color: Appcolor.contentmain,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
        const VerticalSpace(height: 20),
         Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Appcolor.primaryColor,
              ),
              const HorizontalSpace(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sabitur Rahman",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Appcolor.contentmain,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "sabiturrahman60@gmail.com",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Appcolor.contentsecond,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  const VerticalSpace(height: 8),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Editprofilepage()));
                    },
                    child: const Buttonwidget(
                      width: 150,
                      color: Appcolor.contentmain,
                      text: "EDIT PROFILE",
                      textcolor: Appcolor.white,
                      fontSize: 16,
                      radius: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const VerticalSpace(height: 30),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Appcolor.white,
          ),
          child: Options(
              settingOptiondata:
                  UserAccountoptiondata.getUserAccountOptionsData()),
        )
      ]),
    ));
  }
}
