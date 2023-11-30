import 'package:eshopy/src/core/common/widgets/setting_options/model/setting_option_model.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/material.dart';

class SettingOptions extends StatelessWidget {
  const SettingOptions({
    super.key,
    required this.settingOptiondata,
  });

  final List<OptionModel> settingOptiondata;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: settingOptiondata.length,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context,index){
      return  InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>settingOptiondata[index].navigateTo));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
              child: Row(
                children: [
                  settingOptiondata[index].icon,
                  const HorizontalSpace(
                    width: 10,
                  ),
                   Text(
                    settingOptiondata[index].name,
                    style: const TextStyle(
                      fontSize: 16,
                      
                      color: Appcolor.contentmain,
                    ),
                  ),
                  Expanded(child: Container()),
                   Text(
                    settingOptiondata[index].hint.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      
                      color: Appcolor.contentmain,
                    ),
                  ),
                  const HorizontalSpace(
                    width: 10,
                  ),
                  Appicon.arrowForward,
                ],
              ),
            ),
            index==(settingOptiondata.length -1)?const SizedBox(): const Divider(
              height: 1,
              color: Appcolor.balckOpacity,
            ),
          ],
        ),
      );
    });
  }
}


