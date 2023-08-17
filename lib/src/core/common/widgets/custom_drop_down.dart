import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Customdropdown extends StatelessWidget {
  const Customdropdown({
    super.key,
    required this.selectedValue,
    required this.onChanged,
    required this.items,
    required this.hintText,
  });

  final String? selectedValue;
  final List? items;
  final String? hintText;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      icon: Appicon.arrowdown,
      value: selectedValue,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
      items: items?.map((country) {
        return DropdownMenuItem<String>(
          value: country,
          child: Text(country),
        );
      }).toList(),
    );
  }
}
