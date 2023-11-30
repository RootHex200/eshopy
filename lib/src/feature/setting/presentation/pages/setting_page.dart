

import 'package:eshopy/src/core/common/widgets/setting_options/setting_options_list.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/feature/setting/data/data_sources/setting_option_data_source.dart';
import 'package:flutter/material.dart';

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});
  @override
  Widget build(BuildContext context) {
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
            child: SettingOptions(settingOptiondata: SettingOptionDataSource.getSettingOptionsData()),
          )
        ],
      )),
    );
  }
}

