

import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhonenumbertextField extends StatelessWidget {
  const PhonenumbertextField({super.key,required this.phonecontroller,required this.text,required this.color,required this.textcolor,required this.onTap});
  final TextEditingController phonecontroller;
  final String text;
  final Color color;
  final Color textcolor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Appicon.phone,  
        const HorizontalSpace(width: 20),
        Expanded(
          child: IntlPhoneField(
            controller: phonecontroller,
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Appcolor.contentmain),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Appcolor.contentmain),
              ),
            ),
            initialCountryCode: 'ID',
          ),
        ),
    const HorizontalSpace(width: 10),
     InkWell(
      onTap: onTap,
       child: Buttonwidget(
        text: text,
        color: color,
        textcolor:textcolor,
        fontSize: 16,
        radius: 30,
         ),
     )
      ],
    );
  }
}