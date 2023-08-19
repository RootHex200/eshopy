


import 'package:eshopy/src/core/common/widgets/button_widget.dart';
import 'package:eshopy/src/core/common/widgets/custom_text_field.dart';
import 'package:eshopy/src/core/common/widgets/phone_number_text_fields_widgets.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class PhoneandOTPwidget extends StatelessWidget {
  const PhoneandOTPwidget({
    super.key,
    required this.phonecontroller,
    required this.otpcontroller,
    required this.pagetitle
,    required this.onTap,

  });

  final TextEditingController phonecontroller;
  final TextEditingController otpcontroller;
  final void Function()? onTap;
  final String pagetitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          pagetitle,
          style: const TextStyle(
              color: Appcolor.contentmain,
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        const VerticalSpace(height: 50),
        PhonenumbertextField(
          phonecontroller: phonecontroller,
          text: "Send OTP",
          color: Appcolor.primaryColor,
          textcolor: Appcolor.white,
          onTap: onTap,
        ),
        const VerticalSpace(height: 25),
         Row(
          children: [
            const Buttonwidget(
              text: 'OTP',
              textcolor: Appcolor.contentmain,
              bordercolor: Appcolor.contentmain,
              fontSize: 16,
              radius: 30,
            ),
            const HorizontalSpace(width: 20),
            SizedBox(
              width: 100,
              child: CustomTextField(
                controller: otpcontroller,
                hintText: 'Enter OTP',
                keyboardType: TextInputType.number,
              ),
            )
          ],
        )
      ],
    );
  }
}
