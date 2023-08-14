
import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final Color bodercolor;
  final Color? bgcolor;
  final Icon icon;
  const CardButton(
      {super.key,
      required this.icon,
      required this.bodercolor,
      required this.bgcolor,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        border: Border.all(color: bodercolor, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
      ),
      height: 40,
      width: 40,
      child: Center(
        child: icon,
      ),
    );
  }
}
