import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class Savecancelbuttonwidget extends StatelessWidget {
  const Savecancelbuttonwidget(
      {super.key, required this.onSave, required this.onCancel});
  final void Function()? onSave;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Center(
              child: InkWell(
            onTap: onSave,
            child: Buttonwidget(
              color: Appcolor.primaryColor,
              width: MediaQuery.of(context).size.width - 80,
              textcolor: Appcolor.white,
              text: 'SAVE CHANGES',
            ),
          )),
          const VerticalSpace(height: 20),
          Center(
              child: InkWell(
            onTap: onCancel,
            child: Buttonwidget(
              bordercolor: Appcolor.primaryColor,
              width: MediaQuery.of(context).size.width - 80,
              textcolor: Appcolor.primaryColor,
              text: 'Cancel',
            ),
          )),
          const VerticalSpace(height: 20)
        ],
      );
  }
}
