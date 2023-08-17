import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final Color? bordercolor;
  final Color? textcolor;
  final double? width;
  final Icon? icon;
  const Buttonwidget(
      {super.key,
      this.color,
      this.width,
      this.textcolor,
      this.icon,
      this.text,
      this.bordercolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: bordercolor ?? Appcolor.blacktransparent, width: 2)),
      child: Center(
          child: text == null
              ? icon
              : Text(
                  text!,
                  style: TextStyle(color: textcolor, fontSize: 24),
                )),
    );
  }
}
