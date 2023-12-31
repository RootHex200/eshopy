import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.keyboardType,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
    this.initialValue
  });

  final String hintText;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      initialValue: initialValue,
      cursorColor: Appcolor.primaryColor,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        hintText: hintText,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Appcolor.contentmain),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Appcolor.contentmain),
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}
