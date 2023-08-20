import 'package:eshopy/src/core/common/widgets/app_bar_widget.dart';
import 'package:eshopy/src/core/common/widgets/product_order_items_widget.dart';
import 'package:eshopy/src/core/common/widgets/space_widget.dart';
import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class Myoderspage extends StatelessWidget {
  const Myoderspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Column(
        children: [
          const Appbarwidget(title: "My Orders"),
          const VerticalSpace(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Appcolor.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Productorderitemswidget(),
            ),
          )
        ],
      ),
    ));
  }
}
