import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/core/values/app_icon.dart';
import 'package:flutter/material.dart';

class Appbarwidget extends StatelessWidget {
  const Appbarwidget({
    super.key,
    required this.title,
    this.bottomnavpage=false,
  });
  final String title;
  final bool? bottomnavpage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                if(bottomnavpage!=true){
                  Navigator.of(context).pop(context);
                }
              },
              icon: Appicon.arrowBack),
          const HorizontalSpace(width: 20),
           Text(
            title,
            style: const TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: Appcolor.contentmain,
            ),
          ),
        ],
      ),
    );
  }
}
