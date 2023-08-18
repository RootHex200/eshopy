

import 'package:eshopy/src/core/common/widgets/custom_text_field.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/material.dart';

class Introducetextfieldswidget extends StatelessWidget {
  const Introducetextfieldswidget({
    super.key,
    required this.namecontroller,
    required this.dateofbirthcontroller,
    required this.emailcontroller,
  });

  final TextEditingController namecontroller;
  final TextEditingController dateofbirthcontroller;
  final TextEditingController emailcontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Center(child: Appicon.person),
            const HorizontalSpace(width: 20),
            Expanded(
                child: CustomTextField(
              hintText: "Your full name",
              keyboardType: TextInputType.emailAddress,
              controller: namecontroller,
            ))
          ],
        ),
        const VerticalSpace(height: 20),
        Row(
          children: [
            const Center(child: Appicon.date),
            const HorizontalSpace(width: 20),
            Expanded(
                child: CustomTextField(
              hintText: "Date of Birth",
              keyboardType: TextInputType.emailAddress,
              controller: dateofbirthcontroller,
            ))
          ],
        ),
        const VerticalSpace(height: 20),
        Row(
          children: [
            const Center(child: Appicon.email),
            const HorizontalSpace(width: 20),
            Expanded(
                child: CustomTextField(
              hintText: "Email",
              keyboardType: TextInputType.emailAddress,
              controller: emailcontroller,
            ))
          ],
        ),
      ],
    );
  }
}


