

import 'package:flutter/material.dart' show SizedBox, StatelessWidget,Widget,BuildContext;

class HorizontalSpace extends StatelessWidget {
  final double width;
  const HorizontalSpace({super.key,required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width,);
  }
}


class VerticalSpace extends StatelessWidget {
  final double height;
  const VerticalSpace({super.key,required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height,);
  }
}