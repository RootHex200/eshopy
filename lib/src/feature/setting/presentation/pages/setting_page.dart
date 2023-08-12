

import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/utils/colors/app_colors.dart';
import 'package:eshopy/src/feature/setting/data/data_sources/setting_option_data_source.dart';
import 'package:eshopy/src/feature/setting/data/model/setting_option_mode.dart';
import 'package:flutter/material.dart';

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<SettingOptionModel> settingOptiondata=SettingOptionDataSource.getSettingOptionsData();
    return  Scaffold(
      body: SafeArea(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //header
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Setting',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Appcolor.contentmain,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Appcolor.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
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
                         Icon(
                            settingOptiondata[index].icon,
                            color: Appcolor.contentmain,
                          ),
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
                            settingOptiondata[index].hint,
                            style: const TextStyle(
                              fontSize: 16,
                              
                              color: Appcolor.contentmain,
                            ),
                          ),
                          const HorizontalSpace(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Appcolor.contentmain,
                          ),
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
            }),
          )
        ],
      )),
    );
  }
}