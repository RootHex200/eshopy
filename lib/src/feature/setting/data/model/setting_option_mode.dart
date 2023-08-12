


import 'package:flutter/material.dart' show IconData, Widget;

class SettingOptionModel {
  final IconData icon;
  final String name;
  final String hint;
  final Widget navigateTo;

  SettingOptionModel({
    required this.icon,
    required this.name,
    required this.hint,
    required this.navigateTo,
  });


}