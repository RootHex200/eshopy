

import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/material.dart';

class Nextbuttonpartwidget extends StatelessWidget {
  const Nextbuttonpartwidget({
    super.key,
    required this.backbuttonClick,
    required this.nextbuttonClick,
  });
  final Function()? nextbuttonClick;
  final Function()? backbuttonClick;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap:backbuttonClick,
            child: const Buttonwidget(
              width: 60,
              icon: Appicon.back,
              bordercolor: Appcolor.primaryColor,
            ),
          ),
          const HorizontalSpace(width: 20),
          InkWell(
            onTap: nextbuttonClick,
            child: Buttonwidget(
              color: Appcolor.primaryColor,
              width: MediaQuery.of(context).size.width - 160,
              textcolor: Appcolor.white,
              text: 'Next',
            ),
          ),
        ],
      ),
    );
  }
}
