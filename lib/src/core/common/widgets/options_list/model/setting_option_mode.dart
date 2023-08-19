


import 'package:flutter/material.dart' show Icon, Widget;

class OptionModel {
  final Icon icon;
  final String name;
  final String? hint;
  final Widget navigateTo;

  OptionModel({
    required this.icon,
    required this.name,
    this.hint='',
    required this.navigateTo,
  });


}